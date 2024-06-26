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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static  FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyBhrd0N07Ozn2sHkkuV8nySXiaMm-5v8BE',
    appId: '1:1002281124968:android:98e997ea44d0f4749e67dd',
    messagingSenderId: '1002281124968',
    projectId: 'baby-7fbf2',
    storageBucket: 'baby-7fbf2.appspot.com',
  );

  static  FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyBqzFJ_Wmnx7vy_5kQHMOR8awnBmpXurPw',
    appId: '1:1002281124968:ios:c0e2fdf1bac99a729e67dd',
    messagingSenderId: '1002281124968',
    projectId: 'baby-7fbf2',
    storageBucket: 'baby-7fbf2.appspot.com',
    iosBundleId: 'com.example.baby',
  );

  static  FirebaseOptions macos = const FirebaseOptions(
    apiKey: 'AIzaSyBqzFJ_Wmnx7vy_5kQHMOR8awnBmpXurPw',
    appId: '1:1002281124968:ios:7a8bb1a6b7575ec59e67dd',
    messagingSenderId: '1002281124968',
    projectId: 'baby-7fbf2',
    storageBucket: 'baby-7fbf2.appspot.com',
    iosBundleId: 'com.example.baby.RunnerTests',
  );
}
