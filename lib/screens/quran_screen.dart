import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/widgets/show_ayah_widget.dart';

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
  //List<Ayah> ayahs = [];
  Map<String, dynamic> jsonData = {};
  bool _isLoading = true;
  late PageController _pageController;
  int currentIndex = 0;
  
  @override
  void initState() {
    super.initState();
    loadSurahData(surahNumber: widget.sura.surahNumber);
    currentIndex =
        widget.sura.surahNumber - 1; // Adjusting index to match Surah number
    _pageController = PageController(initialPage: currentIndex);
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
              title: Text(
                surahs[currentIndex].surahName,
                style: TextStyle(
                  fontFamily: 'Amiri Quran',
                  fontSize: 30,
                ),
              ),
              actions: [
                Text(widget.sura.ayahs[0].pageNumber.toString()),
              ],
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: PageView.builder(
              controller: _pageController,
              itemCount: surahs.length,
              onPageChanged: (index) {
                print(_pageController.page);
                currentIndex = index;
                loadSurahData(surahNumber: ++index);
                setState(() {});
              },
              itemBuilder: (context, index) {
                SurahModel sura = surahs[index];

                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: show_ayah_widget(widget: widget),
                );
              },
            ),
          );
  }

  loadSurahData({int surahNumber = 0}) async {
    final String response =
        await rootBundle.loadString('assets/surah/surah_$surahNumber.json');
    jsonData = json.decode(response);
    loadAyatDataFromJson(jsonData, surahNumber);
    setState(() {
      _isLoading = false;
    });
  }

  loadAyatDataFromJson(Map<String, dynamic> json, int surahNumber) {
    if (widget.sura.ayahs != null) widget.sura.ayahs!.clear();
    if (surahs[surahNumber].ayahs.isEmpty) {
      for (int i = 0; i < json['verses'].length; i++) {
        widget.sura.ayahs.add(Ayah.fromJson(json['verses'][i]));
        print(Ayah.fromJson(json['verses'][i]));
      }
    } else {}
  }
}
