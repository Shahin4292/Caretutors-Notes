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
    apiKey: 'AIzaSyAaUGT6xFZfk9B5sygAzlwGXwo9X0Boe0E',
    appId: '1:733614665783:web:0e873d0e26e87008d40fb2',
    messagingSenderId: '733614665783',
    projectId: 'caretutors-6147e',
    authDomain: 'caretutors-6147e.firebaseapp.com',
    storageBucket: 'caretutors-6147e.firebasestorage.app',
    measurementId: 'G-ZTPXBDJV7X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEqtK9VDJD2nftajsMVgoB90DYrZFjQXg',
    appId: '1:733614665783:android:ac9bd878cbd71d77d40fb2',
    messagingSenderId: '733614665783',
    projectId: 'caretutors-6147e',
    storageBucket: 'caretutors-6147e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjoIxygfpW6vaWd2XZdC_Kzn_m7apgWbA',
    appId: '1:733614665783:ios:1f66dc721d49970fd40fb2',
    messagingSenderId: '733614665783',
    projectId: 'caretutors-6147e',
    storageBucket: 'caretutors-6147e.firebasestorage.app',
    iosBundleId: 'com.example.caretutorsTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjoIxygfpW6vaWd2XZdC_Kzn_m7apgWbA',
    appId: '1:733614665783:ios:1f66dc721d49970fd40fb2',
    messagingSenderId: '733614665783',
    projectId: 'caretutors-6147e',
    storageBucket: 'caretutors-6147e.firebasestorage.app',
    iosBundleId: 'com.example.caretutorsTask',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAaUGT6xFZfk9B5sygAzlwGXwo9X0Boe0E',
    appId: '1:733614665783:web:c0c220f3644ad115d40fb2',
    messagingSenderId: '733614665783',
    projectId: 'caretutors-6147e',
    authDomain: 'caretutors-6147e.firebaseapp.com',
    storageBucket: 'caretutors-6147e.firebasestorage.app',
    measurementId: 'G-D56KZTBF49',
  );
}
