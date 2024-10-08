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
    apiKey: 'AIzaSyCqyKU9Q5-lFEdkqia5WWR9EcoKS2qnr5Q',
    appId: '1:577393756975:web:c518dff2a22ef989c4afda',
    messagingSenderId: '577393756975',
    projectId: 'check-order-prod',
    authDomain: 'check-order-prod.firebaseapp.com',
    storageBucket: 'check-order-prod.appspot.com',
    measurementId: 'G-CCPWL6ZY6H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRov7ZwF9RcqNBVFrPGNeAK_Vs1zKqXZ0',
    appId: '1:577393756975:android:01028d42b6c44d36c4afda',
    messagingSenderId: '577393756975',
    projectId: 'check-order-prod',
    storageBucket: 'check-order-prod.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQiC2x608b3UN4-mEmP8NsbHfRihWE91s',
    appId: '1:577393756975:ios:85b25bd6a154e298c4afda',
    messagingSenderId: '577393756975',
    projectId: 'check-order-prod',
    storageBucket: 'check-order-prod.appspot.com',
    iosBundleId: 'com.check.admin.checkOrderAdmin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQiC2x608b3UN4-mEmP8NsbHfRihWE91s',
    appId: '1:577393756975:ios:e4aba57d4f2ab8bbc4afda',
    messagingSenderId: '577393756975',
    projectId: 'check-order-prod',
    storageBucket: 'check-order-prod.appspot.com',
    iosBundleId: 'com.check.admin.checkOrderAdmin.RunnerTests',
  );
}
