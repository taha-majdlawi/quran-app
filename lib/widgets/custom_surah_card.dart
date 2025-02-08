import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, this.onTap, required this.sura});
  final SurahModel sura;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: GestureDetector(
        onTap: onTap,
        //Navigator.pushNamed(context, UpdateProduct.id, arguments: product);

        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          sura.surahName,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Lalezar',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    sura.surahNumber.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          const Color.fromARGB(255, 56, 52, 41),
                                    ),
                                  ),
                                ),
                                height: 30,
                                width: 40,
                              ),
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Column(
                    children: [
                      Image.asset(
                        sura.revelationPlace == 'مدنية'
                            ? 'assets/images/masjid-al-nabawi.png'
                            : 'assets/images/makkah.jpg',
                        height: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        sura.revelationPlace,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily: 'Lalezar',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
