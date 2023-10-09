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
    apiKey: 'AIzaSyAj_wpJAWh_EBoxP15rJnSHQo-o2q2BYYE',
    appId: '1:351989017861:web:b0eaecf2a6a9f992ac5b6c',
    messagingSenderId: '351989017861',
    projectId: 'airlift-57e74',
    authDomain: 'airlift-57e74.firebaseapp.com',
    databaseURL: 'https://airlift-57e74-default-rtdb.firebaseio.com',
    storageBucket: 'airlift-57e74.appspot.com',
    measurementId: 'G-70Q9SYK537',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSdqK3KPqNFleyP2889ugyuUT7dgsrGwM',
    appId: '1:351989017861:android:d1eefe8b66333c68ac5b6c',
    messagingSenderId: '351989017861',
    projectId: 'airlift-57e74',
    databaseURL: 'https://airlift-57e74-default-rtdb.firebaseio.com',
    storageBucket: 'airlift-57e74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqnSoW3Yu2-RlE7PcQZnn07blwnIOIVbM',
    appId: '1:351989017861:ios:81cef058bc2abdbbac5b6c',
    messagingSenderId: '351989017861',
    projectId: 'airlift-57e74',
    databaseURL: 'https://airlift-57e74-default-rtdb.firebaseio.com',
    storageBucket: 'airlift-57e74.appspot.com',
    iosClientId: '351989017861-a6jeevf0btvf72sa7fleg7llc4omggej.apps.googleusercontent.com',
    iosBundleId: 'com.example.flightBooking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCqnSoW3Yu2-RlE7PcQZnn07blwnIOIVbM',
    appId: '1:351989017861:ios:63b1d5cea3924918ac5b6c',
    messagingSenderId: '351989017861',
    projectId: 'airlift-57e74',
    databaseURL: 'https://airlift-57e74-default-rtdb.firebaseio.com',
    storageBucket: 'airlift-57e74.appspot.com',
    iosClientId: '351989017861-6nvce5lt8a8nrcdhhtth902oq3eccaqj.apps.googleusercontent.com',
    iosBundleId: 'com.example.flightBooking.RunnerTests',
  );
}
