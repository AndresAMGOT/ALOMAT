import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCneOhA2sBqQis-QLEqbKWd__gPlOn2tyo",
            authDomain: "alomat-12pgr5.firebaseapp.com",
            projectId: "alomat-12pgr5",
            storageBucket: "alomat-12pgr5.appspot.com",
            messagingSenderId: "953983723760",
            appId: "1:953983723760:web:792a8a3f548ea6fa16fa35"));
  } else {
    await Firebase.initializeApp();
  }
}
