import 'package:flutter/material.dart';
import 'package:quran_app/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, this.onTap, required this.sura});
  final SurahModel sura;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      //Navigator.pushNamed(context, UpdateProduct.id, arguments: product);

      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              // height: 140,
              // width: 200,
              child: Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                       sura.surahName,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                          fontFamily: 'Lalezar',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Text(
                  sura.revelationPlace,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontFamily: 'Lalezar',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
