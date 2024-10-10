import 'dart:convert';

class FcmMessage {
  final Message? message;

  FcmMessage({
    this.message,
  });

  FcmMessage copyWith({
    Message? message,
  }) =>
      FcmMessage(
        message: message ?? this.message,
      );

  factory FcmMessage.fromRawJson(String str) =>
      FcmMessage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FcmMessage.fromJson(Map<String, dynamic> json) => FcmMessage(
        message:
            json["message"] == null ? null : Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message?.toJson(),
      };
}

class Message {
  final String? token;
  final String? topic;
  final String? condition;
  final MessageNotification? notification;
  final Map<String, dynamic>? data;
  final Android? android;
  final Apns? apns;
  final Webpush? webpush;

  Message({
    this.token,
    this.topic,
    this.condition,
    this.notification,
    this.data,
    this.android,
    this.apns,
    this.webpush,
  });

  Message copyWith({
    String? token,
    String? topic,
    String? condition,
    MessageNotification? notification,
    Map<String, dynamic>? data,
    Android? android,
    Apns? apns,
    Webpush? webpush,
  }) =>
      Message(
        token: token ?? this.token,
        topic: topic ?? this.topic,
        condition: condition ?? this.condition,
        notification: notification ?? this.notification,
        data: data ?? this.data,
        android: android ?? this.android,
        apns: apns ?? this.apns,
        webpush: webpush ?? this.webpush,
      );

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        token: json["token"],
        topic: json["topic"],
        condition: json["condition"],
        notification: json["notification"] == null
            ? null
            : MessageNotification.fromJson(json["notification"]),
        data: json["data"],
        android:
            json["android"] == null ? null : Android.fromJson(json["android"]),
        apns: json["apns"] == null ? null : Apns.fromJson(json["apns"]),
        webpush:
            json["webpush"] == null ? null : Webpush.fromJson(json["webpush"]),
      );

  Map<String, dynamic> toJson() => {
        if (token != null) "token": token,
        if (topic != null) "topic": topic,
        if (condition != null) "condition": condition,
        if (notification != null) "notification": notification?.toJson(),
        if (data != null) "data": data,
        if (android != null) "android": android?.toJson(),
        if (apns != null) "apns": apns?.toJson(),
        if (webpush != null) "webpush": webpush?.toJson(),
      };
}

enum AndroidPriority { high, normal }

class Android {
  final AndroidPriority? priority;
  final double? secondsToShow;
  final AndroidNotification? notification;
  final AndroidFcmOptions? fcmOptions;

  Android({
    this.priority,
    this.secondsToShow,
    this.notification,
    this.fcmOptions,
  });

  Android copyWith({
    AndroidPriority? priority,
    double? secondsToShow,
    AndroidNotification? notification,
    AndroidFcmOptions? fcmOptions,
  }) =>
      Android(
        priority: priority ?? this.priority,
        secondsToShow: secondsToShow ?? this.secondsToShow,
        notification: notification ?? this.notification,
        fcmOptions: fcmOptions ?? this.fcmOptions,
      );

  factory Android.fromRawJson(String str) => Android.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Android.fromJson(Map<String, dynamic> json) => Android(
        priority: json["priority"],
        secondsToShow:
            double.tryParse(json["ttl"].toString().replaceAll('s', '')),
        notification: json["notification"] == null
            ? null
            : AndroidNotification.fromJson(json["notification"]),
        fcmOptions: json["fcm_options"] == null
            ? null
            : AndroidFcmOptions.fromJson(json["fcm_options"]),
      );

  Map<String, dynamic> toJson() => {
        if (priority != null) "priority": priority?.name,
        if (secondsToShow != null) "ttl": "${secondsToShow}s",
        if (notification != null) "notification": notification?.toJson(),
        if (fcmOptions != null) "fcm_options": fcmOptions?.toJson(),
      };
}

class AndroidFcmOptions {
  final String? analyticsLabel;

  AndroidFcmOptions({
    this.analyticsLabel,
  });

  AndroidFcmOptions copyWith({
    String? analyticsLabel,
  }) =>
      AndroidFcmOptions(
        analyticsLabel: analyticsLabel ?? this.analyticsLabel,
      );

  factory AndroidFcmOptions.fromRawJson(String str) =>
      AndroidFcmOptions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AndroidFcmOptions.fromJson(Map<String, dynamic> json) =>
      AndroidFcmOptions(
        analyticsLabel: json["analytics_label"],
      );

  Map<String, dynamic> toJson() => {
        if (analyticsLabel != null) "analytics_label": analyticsLabel,
      };
}

enum NotificationVisibility { public, private, secret }

class AndroidNotification {
  final String? sound;
  final String? clickAction;
  final String? color;
  final String? tag;
  final String? bodyLocKey;
  final List<String>? bodyLocArgs;
  final String? titleLocKey;
  final List<String>? titleLocArgs;
  final String? channelId;
  final bool? sticky;
  final DateTime? eventTime;
  final bool? localOnly;
  final bool? defaultSound;
  final bool? defaultVibrateTimings;
  final bool? defaultLightSettings;
  final List<String>? vibrateTimings;
  final NotificationVisibility? visibility;
  final String? notificationPriority;
  final int? notificationCount;
  final LightSettings? lightSettings;

  AndroidNotification({
    this.sound,
    this.clickAction,
    this.color,
    this.tag,
    this.bodyLocKey,
    this.bodyLocArgs,
    this.titleLocKey,
    this.titleLocArgs,
    this.channelId,
    this.sticky,
    this.eventTime,
    this.localOnly,
    this.defaultSound,
    this.defaultVibrateTimings,
    this.defaultLightSettings,
    this.vibrateTimings,
    this.visibility,
    this.notificationPriority,
    this.notificationCount,
    this.lightSettings,
  });

  AndroidNotification copyWith({
    String? sound,
    String? clickAction,
    String? color,
    String? tag,
    String? bodyLocKey,
    List<String>? bodyLocArgs,
    String? titleLocKey,
    List<String>? titleLocArgs,
    String? channelId,
    bool? sticky,
    DateTime? eventTime,
    bool? localOnly,
    bool? defaultSound,
    bool? defaultVibrateTimings,
    bool? defaultLightSettings,
    List<String>? vibrateTimings,
    NotificationVisibility? visibility,
    String? notificationPriority,
    int? notificationCount,
    LightSettings? lightSettings,
  }) =>
      AndroidNotification(
        sound: sound ?? this.sound,
        clickAction: clickAction ?? this.clickAction,
        color: color ?? this.color,
        tag: tag ?? this.tag,
        bodyLocKey: bodyLocKey ?? this.bodyLocKey,
        bodyLocArgs: bodyLocArgs ?? this.bodyLocArgs,
        titleLocKey: titleLocKey ?? this.titleLocKey,
        titleLocArgs: titleLocArgs ?? this.titleLocArgs,
        channelId: channelId ?? this.channelId,
        sticky: sticky ?? this.sticky,
        eventTime: eventTime ?? this.eventTime,
        localOnly: localOnly ?? this.localOnly,
        defaultSound: defaultSound ?? this.defaultSound,
        defaultVibrateTimings:
            defaultVibrateTimings ?? this.defaultVibrateTimings,
        defaultLightSettings: defaultLightSettings ?? this.defaultLightSettings,
        vibrateTimings: vibrateTimings ?? this.vibrateTimings,
        visibility: visibility ?? this.visibility,
        notificationPriority: notificationPriority ?? this.notificationPriority,
        notificationCount: notificationCount ?? this.notificationCount,
        lightSettings: lightSettings ?? this.lightSettings,
      );

  factory AndroidNotification.fromRawJson(String str) =>
      AndroidNotification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AndroidNotification.fromJson(Map<String, dynamic> json) =>
      AndroidNotification(
        sound: json["sound"],
        clickAction: json["click_action"],
        color: json["color"],
        tag: json["tag"],
        bodyLocKey: json["body_loc_key"],
        bodyLocArgs: json["body_loc_args"] == null
            ? []
            : List<String>.from(json["body_loc_args"]!.map((x) => x)),
        titleLocKey: json["title_loc_key"],
        titleLocArgs: json["title_loc_args"] == null
            ? []
            : List<String>.from(json["title_loc_args"]!.map((x) => x)),
        channelId: json["channel_id"],
        sticky: json["sticky"],
        eventTime: json["event_time"] == null
            ? null
            : DateTime.parse(json["event_time"]),
        localOnly: json["local_only"],
        defaultSound: json["default_sound"],
        defaultVibrateTimings: json["default_vibrate_timings"],
        defaultLightSettings: json["default_light_settings"],
        vibrateTimings: json["vibrate_timings"] == null
            ? []
            : List<String>.from(json["vibrate_timings"]!.map((x) => x)),
        visibility: json["visibility"],
        notificationPriority: json["notification_priority"],
        notificationCount: json["notification_count"],
        lightSettings: json["light_settings"] == null
            ? null
            : LightSettings.fromJson(json["light_settings"]),
      );

  Map<String, dynamic> toJson() => {
        if (sound != null) "sound": sound,
        if (clickAction != null) "click_action": clickAction,
        if (color != null) "color": color,
        if (tag != null) "tag": tag,
        if (bodyLocKey != null) "body_loc_key": bodyLocKey,
        if (bodyLocArgs != null && bodyLocArgs!.isNotEmpty)
          "body_loc_args": List<dynamic>.from(bodyLocArgs!.map((x) => x)),
        if (titleLocKey != null) "title_loc_key": titleLocKey,
        if (titleLocArgs != null && titleLocArgs!.isNotEmpty)
          "title_loc_args": List<dynamic>.from(titleLocArgs!.map((x) => x)),
        if (channelId != null) "channel_id": channelId,
        if (sticky != null) "sticky": sticky,
        if (eventTime != null) "event_time": eventTime?.toIso8601String(),
        if (localOnly != null) "local_only": localOnly,
        if (defaultSound != null) "default_sound": defaultSound,
        if (defaultVibrateTimings != null)
          "default_vibrate_timings": defaultVibrateTimings,
        if (defaultLightSettings != null)
          "default_light_settings": defaultLightSettings,
        if (vibrateTimings != null && vibrateTimings!.isNotEmpty)
          "vibrate_timings": List<dynamic>.from(vibrateTimings!.map((x) => x)),
        if (visibility != null) "visibility": visibility?.name,
        if (notificationPriority != null)
          "notification_priority": notificationPriority,
        if (notificationCount != null) "notification_count": notificationCount,
        if (lightSettings != null) "light_settings": lightSettings?.toJson(),
      };
}

class LightSettings {
  final Color? color;
  final String? lightOnDuration;
  final String? lightOffDuration;

  LightSettings({
    this.color,
    this.lightOnDuration,
    this.lightOffDuration,
  });

  LightSettings copyWith({
    Color? color,
    String? lightOnDuration,
    String? lightOffDuration,
  }) =>
      LightSettings(
        color: color ?? this.color,
        lightOnDuration: lightOnDuration ?? this.lightOnDuration,
        lightOffDuration: lightOffDuration ?? this.lightOffDuration,
      );

  factory LightSettings.fromRawJson(String str) =>
      LightSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LightSettings.fromJson(Map<String, dynamic> json) => LightSettings(
        color: json["color"] == null ? null : Color.fromJson(json["color"]),
        lightOnDuration: json["light_on_duration"],
        lightOffDuration: json["light_off_duration"],
      );

  Map<String, dynamic> toJson() => {
        if (color != null) "color": color?.toJson(),
        if (lightOnDuration != null) "light_on_duration": lightOnDuration,
        if (lightOffDuration != null) "light_off_duration": lightOffDuration,
      };
}

class Color {
  final double? red;
  final double? green;
  final double? blue;
  final int? alpha;

  Color({
    this.red,
    this.green,
    this.blue,
    this.alpha,
  });

  Color copyWith({
    double? red,
    double? green,
    double? blue,
    int? alpha,
  }) =>
      Color(
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue,
        alpha: alpha ?? this.alpha,
      );

  factory Color.fromRawJson(String str) => Color.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        red: json["red"]?.toDouble(),
        green: json["green"]?.toDouble(),
        blue: json["blue"]?.toDouble(),
        alpha: json["alpha"],
      );

  Map<String, dynamic> toJson() => {
        if (red != null) "red": red,
        if (green != null) "green": green,
        if (blue != null) "blue": blue,
        if (alpha != null) "alpha": alpha,
      };
}

class Apns {
  final ApnsHeaders? headers;
  final Payload? payload;
  final AndroidFcmOptions? fcmOptions;

  Apns({
    this.headers,
    this.payload,
    this.fcmOptions,
  });

  Apns copyWith({
    ApnsHeaders? headers,
    Payload? payload,
    AndroidFcmOptions? fcmOptions,
  }) =>
      Apns(
        headers: headers ?? this.headers,
        payload: payload ?? this.payload,
        fcmOptions: fcmOptions ?? this.fcmOptions,
      );

  factory Apns.fromRawJson(String str) => Apns.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Apns.fromJson(Map<String, dynamic> json) => Apns(
        headers: json["headers"] == null
            ? null
            : ApnsHeaders.fromJson(json["headers"]),
        payload:
            json["payload"] == null ? null : Payload.fromJson(json["payload"]),
        fcmOptions: json["fcm_options"] == null
            ? null
            : AndroidFcmOptions.fromJson(json["fcm_options"]),
      );

  Map<String, dynamic> toJson() => {
        if (headers != null) "headers": headers?.toJson(),
        if (payload != null) "payload": payload?.toJson(),
        if (fcmOptions != null) "fcm_options": fcmOptions?.toJson(),
      };
}

class ApnsHeaders {
  final String? apnsPriority;

  ApnsHeaders({
    this.apnsPriority,
  });

  ApnsHeaders copyWith({
    String? apnsPriority,
  }) =>
      ApnsHeaders(
        apnsPriority: apnsPriority ?? this.apnsPriority,
      );

  factory ApnsHeaders.fromRawJson(String str) =>
      ApnsHeaders.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ApnsHeaders.fromJson(Map<String, dynamic> json) => ApnsHeaders(
        apnsPriority: json["apns-priority"],
      );

  Map<String, dynamic> toJson() => {
        if (apnsPriority != null) "apns-priority": apnsPriority,
      };
}

class Payload {
  final Aps? aps;

  Payload({
    this.aps,
  });

  Payload copyWith({
    Aps? aps,
  }) =>
      Payload(
        aps: aps ?? this.aps,
      );

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        aps: json["aps"] == null ? null : Aps.fromJson(json["aps"]),
      );

  Map<String, dynamic> toJson() => {
        if (aps != null) "aps": aps?.toJson(),
      };
}

class Aps {
  final Alert? alert;
  final int? badge;
  final String? sound;

  Aps({
    this.alert,
    this.badge,
    this.sound,
  });

  Aps copyWith({
    Alert? alert,
    int? badge,
    String? sound,
  }) =>
      Aps(
        alert: alert ?? this.alert,
        badge: badge ?? this.badge,
        sound: sound ?? this.sound,
      );

  factory Aps.fromRawJson(String str) => Aps.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Aps.fromJson(Map<String, dynamic> json) => Aps(
        alert: json["alert"] == null ? null : Alert.fromJson(json["alert"]),
        badge: json["badge"],
        sound: json["sound"],
      );

  Map<String, dynamic> toJson() => {
        if (alert != null) "alert": alert?.toJson(),
        if (badge != null) "badge": badge,
        if (sound != null) "sound": sound,
      };
}

class Alert {
  final String? title;
  final String? body;

  Alert({
    this.title,
    this.body,
  });

  Alert copyWith({
    String? title,
    String? body,
  }) =>
      Alert(
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory Alert.fromRawJson(String str) => Alert.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Alert.fromJson(Map<String, dynamic> json) => Alert(
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        if (title != null) "title": title,
        if (body != null) "body": body,
      };
}

class MessageNotification {
  final String? title;
  final String? body;
  final String? image;
  final String? androidChannelId;

  MessageNotification({
    this.title,
    this.body,
    this.image,
    this.androidChannelId,
  });

  MessageNotification copyWith({
    String? title,
    String? body,
    String? image,
    String? androidChannelId,
  }) =>
      MessageNotification(
        title: title ?? this.title,
        body: body ?? this.body,
        image: image ?? this.image,
        androidChannelId: androidChannelId ?? this.androidChannelId,
      );

  factory MessageNotification.fromRawJson(String str) =>
      MessageNotification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MessageNotification.fromJson(Map<String, dynamic> json) =>
      MessageNotification(
        title: json["title"],
        body: json["body"],
        image: json["image"],
        androidChannelId: json["android_channel_id"],
      );

  Map<String, dynamic> toJson() => {
        if (title != null) "title": title,
        if (body != null) "body": body,
        if (image != null) "image": image,
        if (androidChannelId != null) "android_channel_id": androidChannelId,
      };
}

class Webpush {
  final WebpushHeaders? headers;
  final WebpushNotification? notification;
  final WebpushFcmOptions? fcmOptions;

  Webpush({
    this.headers,
    this.notification,
    this.fcmOptions,
  });

  Webpush copyWith({
    WebpushHeaders? headers,
    WebpushNotification? notification,
    WebpushFcmOptions? fcmOptions,
  }) =>
      Webpush(
        headers: headers ?? this.headers,
        notification: notification ?? this.notification,
        fcmOptions: fcmOptions ?? this.fcmOptions,
      );

  factory Webpush.fromRawJson(String str) => Webpush.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Webpush.fromJson(Map<String, dynamic> json) => Webpush(
        headers: json["headers"] == null
            ? null
            : WebpushHeaders.fromJson(json["headers"]),
        notification: json["notification"] == null
            ? null
            : WebpushNotification.fromJson(json["notification"]),
        fcmOptions: json["fcm_options"] == null
            ? null
            : WebpushFcmOptions.fromJson(json["fcm_options"]),
      );

  Map<String, dynamic> toJson() => {
        if (headers != null) "headers": headers?.toJson(),
        if (notification != null) "notification": notification?.toJson(),
        if (fcmOptions != null) "fcm_options": fcmOptions?.toJson(),
      };
}

class WebpushFcmOptions {
  final String? link;

  WebpushFcmOptions({
    this.link,
  });

  WebpushFcmOptions copyWith({
    String? link,
  }) =>
      WebpushFcmOptions(
        link: link ?? this.link,
      );

  factory WebpushFcmOptions.fromRawJson(String str) =>
      WebpushFcmOptions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebpushFcmOptions.fromJson(Map<String, dynamic> json) =>
      WebpushFcmOptions(
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
      };
}

class WebpushHeaders {
  final String? ttl;

  WebpushHeaders({
    this.ttl,
  });

  WebpushHeaders copyWith({
    String? ttl,
  }) =>
      WebpushHeaders(
        ttl: ttl ?? this.ttl,
      );

  factory WebpushHeaders.fromRawJson(String str) =>
      WebpushHeaders.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebpushHeaders.fromJson(Map<String, dynamic> json) => WebpushHeaders(
        ttl: json["TTL"],
      );

  Map<String, dynamic> toJson() => {
        if (ttl != null) "TTL": ttl,
      };
}

class WebpushNotification {
  final String? title;
  final String? body;
  final String? icon;

  WebpushNotification({
    this.title,
    this.body,
    this.icon,
  });

  WebpushNotification copyWith({
    String? title,
    String? body,
    String? icon,
  }) =>
      WebpushNotification(
        title: title ?? this.title,
        body: body ?? this.body,
        icon: icon ?? this.icon,
      );

  factory WebpushNotification.fromRawJson(String str) =>
      WebpushNotification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebpushNotification.fromJson(Map<String, dynamic> json) =>
      WebpushNotification(
        title: json["title"],
        body: json["body"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        if (title != null) "title": title,
        if (body != null) "body": body,
        if (icon != null) "icon": icon,
      };
}
