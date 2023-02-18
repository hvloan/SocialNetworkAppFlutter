import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_network_app/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDIsbqfF8S0Onwb1edjTH4FS3DSrI0lKVo",
          authDomain: "socialnetworkflutter-2ceab.firebaseapp.com",
          projectId: "socialnetworkflutter-2ceab",
          storageBucket: "socialnetworkflutter-2ceab.appspot.com",
          messagingSenderId: "712935678121",
          appId: "1:712935678121:web:21e766095a06ba492e09b8",
          measurementId: "G-TEJVXZ4XN0"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Network App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
