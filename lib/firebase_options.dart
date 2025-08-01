import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBxb4wb7qhaR40a-2kwJItvMujmjeqboy4',
    appId: '1:113383080147:web:d7b1ee9fa0c7a8b8c69426',
    messagingSenderId: '113383080147',
    projectId: 'aim2024chat',
    authDomain: 'aim2024chat.firebaseapp.com',
    storageBucket: 'aim2024chat.appspot.com',
    measurementId: 'G-PNJF8E3PT4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCStt4CrL_A2XG83Akt6O46H1C2y1ntaKM',
    appId: '1:113383080147:android:e29de862df07e842c69426',
    messagingSenderId: '113383080147',
    projectId: 'aim2024chat',
    storageBucket: 'aim2024chat.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA167JN2HWbPX-7BJWmWc3UzwEM5CDQBAk',
    appId: '1:113383080147:ios:2c9936c21d95d05ec69426',
    messagingSenderId: '113383080147',
    projectId: 'aim2024chat',
    storageBucket: 'aim2024chat.appspot.com',
    iosBundleId: 'com.aim2024.app.aim2024',
  );
}