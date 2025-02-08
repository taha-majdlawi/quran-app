
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quran_app/screens/quran_screen.dart';

class show_ayah_widget extends StatelessWidget {
  const show_ayah_widget({
    super.key,
    required this.widget,
  });

  final QuranScreen widget;

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      scrollDirection: Axis.vertical,
      children: [
        ...widget.sura.ayahs!.map(
          (ayah) => Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Directionality(
              // لضمان اتجاه النص من اليمين إلى اليسار
              textDirection: TextDirection.rtl,
              child: RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Amiri Quran',
                      color: Colors.black),
                  children: [
                    TextSpan(text: ayah.text), // نص الآية
                    TextSpan(
                      text:
                          ' ﴿${ayah.ayahNumber}﴾', // رقم الآية داخل القوسين
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
