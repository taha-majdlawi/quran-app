import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/screens/quran_screen.dart';
import 'package:quran_app/widgets/custom_surah_card.dart';

class ShowAllSurah extends StatelessWidget {
  const ShowAllSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: kPrimaryColor,
        // automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: 40,
          ),
          Image.asset('assets/images/quran.png', height: 80, width: 80),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 120),
            child: Text(
              'القرآن الكريم',
              style: TextStyle(
                fontFamily: 'Lalezar',
                fontSize: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: surahs.length,
          itemBuilder: (context, index) {
            return SurahCard(
              sura: surahs[index],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return QuranScreen(sura: surahs[index]);
                }));
              },
            );
          }),
    );
  }
}
