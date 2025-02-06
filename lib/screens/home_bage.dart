import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        ],
        
      ),
    );
  }
}
