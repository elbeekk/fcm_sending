library fcm_sending;

import 'dart:convert';

import 'package:fcm_sending/fcm_message.dart';
import 'package:flutter/material.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FcmSending {
  static late SharedPreferences _pref;

  static Future<void> sendMessage(FcmMessage message) async {
    final bearerToken = await _getBearerToken();
    try {
      post(
        Uri.parse(
          "https://fcm.googleapis.com/v1/projects/${_pref.getString('projectId')}/messages:send",
        ),
        body: message.toJson(),
        headers: {
          "Authorization": "Bearer $bearerToken",
        },
      );
    } catch (e, s) {
      debugPrint("$e \n$s");
    }
  }

  static Future<dynamic> _getBearerToken() async {
    if (_pref.getString('serviceAccount') == null) {
      return Exception("FCM Sending not initialized in main.dart");
    } else {
      final client = await clientViaServiceAccount(
          ServiceAccountCredentials.fromJson(
              jsonDecode(_pref.getString('serviceAccount')!)),
          ["https://www.googleapis.com/auth/firebase.messaging"]);

      String token = client.credentials.accessToken.data;
      return token;
    }
  }

  static init({required Map<String, dynamic> serviceAccountCredentials}) async {
    _pref = await SharedPreferences.getInstance();
    _pref.setString("serviceAccount", jsonEncode(serviceAccountCredentials));
    _pref.setString(
        "projectId", jsonEncode(serviceAccountCredentials['project_id']));
  }
}
