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
    apiKey: 'AIzaSyDACQuJiEK_JIOnHstTIibo9XqA2Qx1zxg',
    appId: '1:419753113682:web:14981839cb0023b832c78b',
    messagingSenderId: '419753113682',
    projectId: 'reddit-clone-d804a',
    authDomain: 'reddit-clone-d804a.firebaseapp.com',
    storageBucket: 'reddit-clone-d804a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAh3XxR59pYSw9MzIrm9OvEwtr5BygcswY',
    appId: '1:419753113682:android:12ab48b70daefdc832c78b',
    messagingSenderId: '419753113682',
    projectId: 'reddit-clone-d804a',
    storageBucket: 'reddit-clone-d804a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC84nNW2QlBCLlnE9nTsPxs7aYuDi_mNNU',
    appId: '1:419753113682:ios:f3b5371e318222a132c78b',
    messagingSenderId: '419753113682',
    projectId: 'reddit-clone-d804a',
    storageBucket: 'reddit-clone-d804a.appspot.com',
    iosBundleId: 'com.example.redditClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC84nNW2QlBCLlnE9nTsPxs7aYuDi_mNNU',
    appId: '1:419753113682:ios:b69414484248362132c78b',
    messagingSenderId: '419753113682',
    projectId: 'reddit-clone-d804a',
    storageBucket: 'reddit-clone-d804a.appspot.com',
    iosBundleId: 'com.example.redditClone.RunnerTests',
  );
}