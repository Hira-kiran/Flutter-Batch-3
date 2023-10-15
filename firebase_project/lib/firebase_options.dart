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
    apiKey: 'AIzaSyCtDW1hx0qfsvxbw3MgGfZ2nwnpP7t0idY',
    appId: '1:676721362277:web:e39396e05cd1af68564d8c',
    messagingSenderId: '676721362277',
    projectId: 'fir-project-7d7bd',
    authDomain: 'fir-project-7d7bd.firebaseapp.com',
    storageBucket: 'fir-project-7d7bd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGP8meYIKE5xtaqEvLYJgtISyuSChm55o',
    appId: '1:676721362277:android:a7e969a8b0a443d6564d8c',
    messagingSenderId: '676721362277',
    projectId: 'fir-project-7d7bd',
    storageBucket: 'fir-project-7d7bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_kUAZYQ0LlswZZzTT-_Y86Tuyooppbmk',
    appId: '1:676721362277:ios:b61ee7f7989fcc5b564d8c',
    messagingSenderId: '676721362277',
    projectId: 'fir-project-7d7bd',
    storageBucket: 'fir-project-7d7bd.appspot.com',
    iosBundleId: 'com.example.firebaseProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_kUAZYQ0LlswZZzTT-_Y86Tuyooppbmk',
    appId: '1:676721362277:ios:f8522fffc1b11df5564d8c',
    messagingSenderId: '676721362277',
    projectId: 'fir-project-7d7bd',
    storageBucket: 'fir-project-7d7bd.appspot.com',
    iosBundleId: 'com.example.firebaseProject.RunnerTests',
  );
}