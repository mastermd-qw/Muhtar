import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDToNz6JuNc3v-po2X7mnh9MlZ_HypHnFM",
            authDomain: "medina-server.firebaseapp.com",
            projectId: "medina-server",
            storageBucket: "medina-server.appspot.com",
            messagingSenderId: "916791451675",
            appId: "1:916791451675:web:cb9961cd3314682ad018be",
            measurementId: "G-GN202343YF"));
  } else {
    await Firebase.initializeApp();
  }
}
