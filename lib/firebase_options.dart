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
    apiKey: 'AIzaSyAPiaC0WGIK4JP5P8mBbnW8YxDccVjl1Iw',
    appId: '1:736490103048:web:08e8bd212e7748cc4c0cbd',
    messagingSenderId: '736490103048',
    projectId: 'audio-video-chat-ac46c',
    authDomain: 'audio-video-chat-ac46c.firebaseapp.com',
    storageBucket: 'audio-video-chat-ac46c.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyXZfCbKbaivTaz2ywRiuGqe4v6SZK9JA',
    appId: '1:736490103048:android:6636bd58bb02b0914c0cbd',
    messagingSenderId: '736490103048',
    projectId: 'audio-video-chat-ac46c',
    storageBucket: 'audio-video-chat-ac46c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDk6OS6sa-fjt1MAD8iIN5Svc8whNFBT6A',
    appId: '1:736490103048:ios:94c7aee8a7d82cb54c0cbd',
    messagingSenderId: '736490103048',
    projectId: 'audio-video-chat-ac46c',
    storageBucket: 'audio-video-chat-ac46c.firebasestorage.app',
    iosBundleId: 'com.example.audioVideo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDk6OS6sa-fjt1MAD8iIN5Svc8whNFBT6A',
    appId: '1:736490103048:ios:94c7aee8a7d82cb54c0cbd',
    messagingSenderId: '736490103048',
    projectId: 'audio-video-chat-ac46c',
    storageBucket: 'audio-video-chat-ac46c.firebasestorage.app',
    iosBundleId: 'com.example.audioVideo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPiaC0WGIK4JP5P8mBbnW8YxDccVjl1Iw',
    appId: '1:736490103048:web:5c01eaaf87f3ca454c0cbd',
    messagingSenderId: '736490103048',
    projectId: 'audio-video-chat-ac46c',
    authDomain: 'audio-video-chat-ac46c.firebaseapp.com',
    storageBucket: 'audio-video-chat-ac46c.firebasestorage.app',
  );
}
