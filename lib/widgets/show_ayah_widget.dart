import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/screens/quran_screen.dart';
import 'package:quran_app/widgets/customr_ayah.dart';

class show_ayah_widget extends StatelessWidget {
  const show_ayah_widget({
    super.key,
    required this.widget,
  });

  final QuranScreen widget;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            ...widget.sura.ayahs!.map(
              (ayah) => custome_ayah(ayah: ayah,),
            ),
          ],
        ),
      ],
    );
  }
}
