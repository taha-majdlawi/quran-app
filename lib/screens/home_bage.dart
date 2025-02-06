import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/models/categoris_model.dart';
import 'package:quran_app/widgets/custom_card.dart';
import 'package:quran_app/widgets/show_timeNow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 102, 110, 85),
        actions: [
          Image.asset('assets/images/quran.png', height: 80, width: 80),
          SizedBox(
            height: 20,
            width: 180,
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
      body: Column(
        children: [
          Image.asset(
              'assets/images/vecteezy_jerusalem-palestinian-al-aqsa-mosque-cartoon-vector_25682958-1.jpg'),
          ShowTimeWidget(),
          CustomCard(category: category[0]),
          CustomCard(category: category[1]),
        
        ],
      ),
    );
  }
}
