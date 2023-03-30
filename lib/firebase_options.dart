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
    apiKey: 'AIzaSyC0iPaY_PzDhnA_GM5PGRyMNhYgdFKRuyY',
    appId: '1:546694578059:web:c3856c25eb46ad1904b98e',
    messagingSenderId: '546694578059',
    projectId: 'lab12-it-5c1cf',
    authDomain: 'lab12-it-5c1cf.firebaseapp.com',
    storageBucket: 'lab12-it-5c1cf.appspot.com',
    measurementId: 'G-7V31Y7WVL9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7Cwaam_ECTGGJ_1sslBJHZ7LrA9nHQds',
    appId: '1:546694578059:android:17b36476e64d708d04b98e',
    messagingSenderId: '546694578059',
    projectId: 'lab12-it-5c1cf',
    storageBucket: 'lab12-it-5c1cf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjgxvIORxBxFB5b2TuKgMymRbDXBsvVYU',
    appId: '1:546694578059:ios:980b2039fa76b1de04b98e',
    messagingSenderId: '546694578059',
    projectId: 'lab12-it-5c1cf',
    storageBucket: 'lab12-it-5c1cf.appspot.com',
    iosClientId: '546694578059-2qgh3754hbk3kdssg9t310j1lh98rgd4.apps.googleusercontent.com',
    iosBundleId: 'com.example.lab12',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjgxvIORxBxFB5b2TuKgMymRbDXBsvVYU',
    appId: '1:546694578059:ios:980b2039fa76b1de04b98e',
    messagingSenderId: '546694578059',
    projectId: 'lab12-it-5c1cf',
    storageBucket: 'lab12-it-5c1cf.appspot.com',
    iosClientId: '546694578059-2qgh3754hbk3kdssg9t310j1lh98rgd4.apps.googleusercontent.com',
    iosBundleId: 'com.example.lab12',
  );
}
