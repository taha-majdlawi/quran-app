import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/models/categoris_model.dart';
import 'package:quran_app/screens/show_all_surah.dart';
import 'package:quran_app/widgets/custom_category_card.dart';
import 'package:quran_app/widgets/show_timeNow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        actions: [
          //Image.asset('assets/images/quran.png', height: 60, width: 60),
          Expanded(
            child: Text(
              textAlign: TextAlign.right,
              'القرآن الكريم',
              style: TextStyle(
                fontFamily: 'Lalezar',
                fontSize: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(
            width: 17,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                    'assets/images/vecteezy_jerusalem-palestinian-al-aqsa-mosque-cartoon-vector_25682958-1.jpg'),
              ),
              elevation: 10,
            ),
            SizedBox(
              height: 40,
            ),
            ShowTimeWidget(),
            SizedBox(
              height: 40,
            ),
            CustomCard(
              category: category[0],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ShowAllSurah();
                  },
                ));
              },
            ),
            CustomCard(category: category[1]),
            CustomCard(category: category[2]),
          ],
        ),
      ),
    );
  }
}
