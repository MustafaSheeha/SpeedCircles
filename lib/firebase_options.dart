// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyArscVG0eLo8fr1gbYoYASVHYaAUMHkJ58',
    appId: '1:1035827629927:web:5934cc22657148ad2ce9c2',
    messagingSenderId: '1035827629927',
    projectId: 'speedcircles-595c1',
    authDomain: 'speedcircles-595c1.firebaseapp.com',
    storageBucket: 'speedcircles-595c1.appspot.com',
    measurementId: 'G-MNJBC2SFYQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVwEJv0_sfhgF0SO0cyIp4LzkJRYcfl3o',
    appId: '1:1035827629927:android:1d05d3873d6911502ce9c2',
    messagingSenderId: '1035827629927',
    projectId: 'speedcircles-595c1',
    storageBucket: 'speedcircles-595c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHSXFWR-f4IzlNS0OTh1kFJFjfV_jXZiI',
    appId: '1:1035827629927:ios:e384797e508e50432ce9c2',
    messagingSenderId: '1035827629927',
    projectId: 'speedcircles-595c1',
    storageBucket: 'speedcircles-595c1.appspot.com',
    iosBundleId: 'com.example.speedcircles',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHSXFWR-f4IzlNS0OTh1kFJFjfV_jXZiI',
    appId: '1:1035827629927:ios:5492e9b28d28027c2ce9c2',
    messagingSenderId: '1035827629927',
    projectId: 'speedcircles-595c1',
    storageBucket: 'speedcircles-595c1.appspot.com',
    iosBundleId: 'com.example.speedcircles.RunnerTests',
  );
}
