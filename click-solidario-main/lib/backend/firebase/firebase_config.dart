import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCdn4ffUXPbqf009q3GlG70f8u8Hl_Qfpk",
            authDomain: "click-solidario-55e58.firebaseapp.com",
            projectId: "click-solidario-55e58",
            storageBucket: "click-solidario-55e58.appspot.com",
            messagingSenderId: "1084555162232",
            appId: "1:1084555162232:web:64124789586d85221db38d"));
  } else {
    await Firebase.initializeApp();
  }
}
