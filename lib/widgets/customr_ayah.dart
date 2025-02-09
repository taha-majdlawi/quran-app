import 'package:flutter/material.dart';
import 'package:quran_app/models/surah_model.dart';

class custome_ayah extends StatelessWidget {
  const custome_ayah({
    super.key,
    required this.ayah,
  });
  final Ayah ayah;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(ayah.text);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Directionality(
          // لضمان اتجاه النص من اليمين إلى اليسار
          textDirection: TextDirection.rtl,
          child: RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
              style: TextStyle(
                  fontSize: 30, fontFamily: 'Amiri Quran', color: Colors.black),
              children: [
                TextSpan(text: ayah.text), // نص الآية
                TextSpan(
                  text: ' ﴿${ayah.ayahNumber}﴾', // رقم الآية داخل القوسين
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
