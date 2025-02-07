import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/screens/home_bage.dart';

import 'package:quran_app/screens/login_screen.dart';
import 'package:quran_app/screens/quran_screen.dart';
import 'firebase_options.dart';

import 'dart:convert';
import 'package:flutter/services.dart'; // للوصول للـ assets
import 'package:http/http.dart' as http;

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
      home: HomePage(),
    );
  }
}
