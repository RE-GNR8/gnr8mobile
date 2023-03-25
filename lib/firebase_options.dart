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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDZDt_L4xZnGaM5WVXIV0vfJzVw2blh8Xs',
    appId: '1:544065708380:web:973d180697967f67fb2199',
    messagingSenderId: '544065708380',
    projectId: 'gnr8dapp',
    authDomain: 'gnr8dapp.firebaseapp.com',
    storageBucket: 'gnr8dapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCauvulAMCt8iMTZzf2D7uEFMpQ_i5aS00',
    appId: '1:544065708380:android:0e9f2df132f95532fb2199',
    messagingSenderId: '544065708380',
    projectId: 'gnr8dapp',
    storageBucket: 'gnr8dapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBX7XCSXNHisjUCMGuNcHk8ztcoEqCYV0Y',
    appId: '1:544065708380:ios:000d610c6dc6f3a1fb2199',
    messagingSenderId: '544065708380',
    projectId: 'gnr8dapp',
    storageBucket: 'gnr8dapp.appspot.com',
    iosClientId: '544065708380-40ug2ql9l3guu4skn1gd64sq70l122la.apps.googleusercontent.com',
    iosBundleId: 'xyz.gnr8.app',
  );
}
