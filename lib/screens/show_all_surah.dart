import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';
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
        automaticallyImplyLeading: false,
        actions: [
          Image.asset('assets/images/quran.png', height: 80, width: 80),
          SizedBox(
            height: 20,
            width: 175,
          ),
          Text(
            'القرآن الكريم',
            style: TextStyle(
              fontFamily: 'Lalezar',
              fontSize: 30,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return SurahCard();
      }),
    );
  }
}
