
# Fcm Sending for Flutter

**Fcm Sending** is a Flutter package that simplifies the process of sending notifications in your Flutter app. This package helps you send customized notifications easily, and it converts the notification message body into a Dart model, ensuring clarity and eliminating confusion when dealing with notification data.

## Features

- Send notifications with custom sound, vibration, and priority settings.
- Convert complex notification payloads into Dart models automatically.
- Reduce confusion by clearly defining notification data.
- Easy integration with Firebase and other notification services.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  fcm_sending: latest_version
```

Then run `flutter pub get` to install the package.

## Usage

Here’s an example of how to send a notification using this package:

```dart
import 'package:fcm_sending/fcm_message.dart';


void sendCustomNotification() {
  
  // init it in main.dart
  FcmSending.init();
  
  //then use it where ever u want 
  FcmSending.sendMessage();
}
```

The message body is converted into a Dart model for ease of use, making it straightforward for developers to manage notification data without worrying about parsing complex payloads.

## Contributing

Contributions are welcome! If you have any suggestions or find any issues, feel free to open an issue or submit a pull request.

## Author

Developed and maintained by **Elbek**.

## License

This package is licensed under the MIT License.
