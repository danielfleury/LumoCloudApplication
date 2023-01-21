import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKFAmC7vPfI5qgZBnMhUfxlxLFqFIBhCw",
            authDomain: "lumoscan-ecc8e.firebaseapp.com",
            projectId: "lumoscan-ecc8e",
            storageBucket: "lumoscan-ecc8e.appspot.com",
            messagingSenderId: "419489619179",
            appId: "1:419489619179:web:6ac156372cd9e34d4232ae",
            measurementId: "G-Q034VE4CTF"));
  } else {
    await Firebase.initializeApp();
  }
}
