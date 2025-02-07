import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/models/surah_model.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({
    super.key,
    required this.sura,
  });
  final SurahModel sura;

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  Map<String, dynamic> surahData = {};
  List<Ayah> ayahs = [];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    loadSurahData(widget.sura.surahNumber);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            backgroundColor: kPrimaryColor,
            body: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
            ),
            backgroundColor: kPrimaryColor,
            body: PageView.builder(
                itemCount: ayahs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.right,
                        ayahs[index].text,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  );
                }),
          );
  }

  loadSurahData(int surahNumber) async {
    final String response =
        await rootBundle.loadString('assets/surah/surah_$surahNumber.json');
    Map<String, dynamic> jsonData = json.decode(response);
    loadAyatDataFromJson(jsonData);
    setState(() {
      _isLoading = false;
    });
  }

  loadAyatDataFromJson(Map<String, dynamic> json) {
    for (int i = 0; i < json['verses'].length; i++) {
      ayahs.add(Ayah.fromJson(json['verses'][i]));
      print(Ayah.fromJson(json['verses'][i]));
    }
  }
}
