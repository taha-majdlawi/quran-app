import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:quran_app/screens/login_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         fontFamily: 'Poppins',
         
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
