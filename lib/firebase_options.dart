// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDbN1ZngJh3O-NYwkIswFqFoNmC_9n1HZw',
    appId: '1:664344701637:web:1efc3c6d7940575ba4deac',
    messagingSenderId: '664344701637',
    projectId: 'smart-parking-41b2c',
    authDomain: 'smart-parking-41b2c.firebaseapp.com',
    storageBucket: 'smart-parking-41b2c.appspot.com',
    measurementId: 'G-5KXHN8V9L2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGH9jSx9PUWWzq1DV5hJn2XC0ETiI--4o',
    appId: '1:664344701637:android:54514feee9fe7da1a4deac',
    messagingSenderId: '664344701637',
    projectId: 'smart-parking-41b2c',
    storageBucket: 'smart-parking-41b2c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAPQQz5SRMXaUrh8S88OxR2vGG_iG3Cvc',
    appId: '1:664344701637:ios:55f789355d34889ca4deac',
    messagingSenderId: '664344701637',
    projectId: 'smart-parking-41b2c',
    storageBucket: 'smart-parking-41b2c.appspot.com',
    iosBundleId: 'com.example.smartparkingWebsite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAPQQz5SRMXaUrh8S88OxR2vGG_iG3Cvc',
    appId: '1:664344701637:ios:55f789355d34889ca4deac',
    messagingSenderId: '664344701637',
    projectId: 'smart-parking-41b2c',
    storageBucket: 'smart-parking-41b2c.appspot.com',
    iosBundleId: 'com.example.smartparkingWebsite',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDbN1ZngJh3O-NYwkIswFqFoNmC_9n1HZw',
    appId: '1:664344701637:web:8a1b54d0091f6850a4deac',
    messagingSenderId: '664344701637',
    projectId: 'smart-parking-41b2c',
    authDomain: 'smart-parking-41b2c.firebaseapp.com',
    storageBucket: 'smart-parking-41b2c.appspot.com',
    measurementId: 'G-LPD37D0HGN',
  );
}