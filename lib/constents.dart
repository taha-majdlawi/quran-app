import 'dart:ui';

import 'package:quran_app/models/categoris_model.dart';
import 'package:quran_app/models/surah_model.dart';

final Color kPrimaryColor = const Color.fromARGB(255, 183, 196, 155);
final List<CategoryModel> category = [
  CategoryModel(Name: 'القرآن الكريم', image: 'assets/images/quran.png'),
  CategoryModel(Name: 'مواعيد الاذان', image: 'assets/images/dome.png'),
  CategoryModel(Name: 'المسبحة', image: 'assets/images/dome.png'),
];

List<SurahModel> surahs = [
  SurahModel(surahName: "الْفَاتِحَة", surahNumber: 1, ayatNumber: 7, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "البَقَرَة", surahNumber: 2, ayatNumber: 286, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "آلِ عِمْرَان", surahNumber: 3, ayatNumber: 200, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "النِّسَاء", surahNumber: 4, ayatNumber: 176, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمَائِدَة", surahNumber: 5, ayatNumber: 120, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْأَنْعَام", surahNumber: 6, ayatNumber: 165, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَعْرَاف", surahNumber: 7, ayatNumber: 206, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَنْفَال", surahNumber: 8, ayatNumber: 75, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "التَّوْبَة", surahNumber: 9, ayatNumber: 129, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "يُونُس", surahNumber: 10, ayatNumber: 109, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "هُود", surahNumber: 11, ayatNumber: 123, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "يُوسُف", surahNumber: 12, ayatNumber: 111, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الرَّعْد", surahNumber: 13, ayatNumber: 43, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "إِبْرَاهِيم", surahNumber: 14, ayatNumber: 52, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْحِجْر", surahNumber: 15, ayatNumber: 99, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّحْل", surahNumber: 16, ayatNumber: 128, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْإِسْرَاء", surahNumber: 17, ayatNumber: 111, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْكَهْف", surahNumber: 18, ayatNumber: 110, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "مَرْيَم", surahNumber: 19, ayatNumber: 98, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "طه", surahNumber: 20, ayatNumber: 135, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَنْبِيَاء", surahNumber: 21, ayatNumber: 112, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْحَجّ", surahNumber: 22, ayatNumber: 78, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُؤْمِنُونَ", surahNumber: 23, ayatNumber: 118, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النُّور", surahNumber: 24, ayatNumber: 64, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْفُرْقَان", surahNumber: 25, ayatNumber: 77, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الشُّعَرَاء", surahNumber: 26, ayatNumber: 227, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّمْل", surahNumber: 27, ayatNumber: 93, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقَصَص", surahNumber: 28, ayatNumber: 88, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْعَنْكَبُوت", surahNumber: 29, ayatNumber: 69, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الرُّوم", surahNumber: 30, ayatNumber: 60, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "لُقْمَان", surahNumber: 31, ayatNumber: 34, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "السَّجْدَة", surahNumber: 32, ayatNumber: 30, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَحْزَاب", surahNumber: 33, ayatNumber: 73, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "سَبَأ", surahNumber: 34, ayatNumber: 54, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "فَاطِر", surahNumber: 35, ayatNumber: 45, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "يس", surahNumber: 36, ayatNumber: 83, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الصَّافَّات", surahNumber: 37, ayatNumber: 182, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "ص", surahNumber: 38, ayatNumber: 88, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الزُّمَر", surahNumber: 39, ayatNumber: 75, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "غَافِر", surahNumber: 40, ayatNumber: 85, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "فُصِّلَت", surahNumber: 41, ayatNumber: 54, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الشُّورَى", surahNumber: 42, ayatNumber: 53, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الزُّخْرُف", surahNumber: 43, ayatNumber: 89, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الدُّخَان", surahNumber: 44, ayatNumber: 59, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْجَاثِيَة", surahNumber: 45, ayatNumber: 37, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَحْقَاف", surahNumber: 46, ayatNumber: 35, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "مُحَمَّد", surahNumber: 47, ayatNumber: 38, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْفَتْح", surahNumber: 48, ayatNumber: 29, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْحُجُرَات", surahNumber: 49, ayatNumber: 18, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "ق", surahNumber: 50, ayatNumber: 45, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الذَّارِيَات", surahNumber: 51, ayatNumber: 60, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الطُّور", surahNumber: 52, ayatNumber: 49, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّجْم", surahNumber: 53, ayatNumber: 62, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقَمَر", surahNumber: 54, ayatNumber: 55, revelationPlace: "مكية",ayahs: []),
   SurahModel(surahName: "الرَّحْمَٰن", surahNumber: 55, ayatNumber: 78, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْوَاقِعَة", surahNumber: 56, ayatNumber: 96, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْحَدِيد", surahNumber: 57, ayatNumber: 29, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُجَادِلَة", surahNumber: 58, ayatNumber: 22, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْحَشْر", surahNumber: 59, ayatNumber: 24, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُمْتَحَنَة", surahNumber: 60, ayatNumber: 13, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الصَّف", surahNumber: 61, ayatNumber: 14, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْجُمُعَة", surahNumber: 62, ayatNumber: 11, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُنَافِقُونَ", surahNumber: 63, ayatNumber: 11, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "التَّغَابُن", surahNumber: 64, ayatNumber: 18, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الطَّلَاق", surahNumber: 65, ayatNumber: 12, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "التَّحْرِيم", surahNumber: 66, ayatNumber: 12, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُلْك", surahNumber: 67, ayatNumber: 30, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقَلَم", surahNumber: 68, ayatNumber: 52, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْحَاقَّة", surahNumber: 69, ayatNumber: 52, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْمَعَارِج", surahNumber: 70, ayatNumber: 44, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "نُوح", surahNumber: 71, ayatNumber: 28, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْجِن", surahNumber: 72, ayatNumber: 28, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْمُزَّمِّل", surahNumber: 73, ayatNumber: 20, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْمُدَّثِّر", surahNumber: 74, ayatNumber: 56, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقِيَامَة", surahNumber: 75, ayatNumber: 40, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْإِنْسَان", surahNumber: 76, ayatNumber: 31, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمُرْسَلَات", surahNumber: 77, ayatNumber: 50, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّبَأ", surahNumber: 78, ayatNumber: 40, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّازِعَات", surahNumber: 79, ayatNumber: 46, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "عَبَسَ", surahNumber: 80, ayatNumber: 42, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "التَّكْوِير", surahNumber: 81, ayatNumber: 29, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْإِنْفِطَار", surahNumber: 82, ayatNumber: 19, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْمُطَفِّفِينَ", surahNumber: 83, ayatNumber: 36, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْإِنْشِقَاق", surahNumber: 84, ayatNumber: 25, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْبُرُوج", surahNumber: 85, ayatNumber: 22, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الطَّارِق", surahNumber: 86, ayatNumber: 17, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْأَعْلَى", surahNumber: 87, ayatNumber: 19, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْغَاشِيَة", surahNumber: 88, ayatNumber: 26, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْفَجْر", surahNumber: 89, ayatNumber: 30, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْبَلَد", surahNumber: 90, ayatNumber: 20, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الشَّمْس", surahNumber: 91, ayatNumber: 15, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "اللَّيْل", surahNumber: 92, ayatNumber: 21, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الضُّحَى", surahNumber: 93, ayatNumber: 11, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الشَّرْح", surahNumber: 94, ayatNumber: 8, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "التِّين", surahNumber: 95, ayatNumber: 8, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْعَلَق", surahNumber: 96, ayatNumber: 19, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقَدْر", surahNumber: 97, ayatNumber: 5, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْبَيِّنَة", surahNumber: 98, ayatNumber: 8, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الزَّلْزَلَة", surahNumber: 99, ayatNumber: 8, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْعَادِيَات", surahNumber: 100, ayatNumber: 11, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْقَارِعَة", surahNumber: 101, ayatNumber: 11, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "التَّكَاثُر", surahNumber: 102, ayatNumber: 8, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْعَصْر", surahNumber: 103, ayatNumber: 3, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْهُمَزَة", surahNumber: 104, ayatNumber: 9, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْفِيل", surahNumber: 105, ayatNumber: 5, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "قُرَيْش", surahNumber: 106, ayatNumber: 4, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْمَاعُون", surahNumber: 107, ayatNumber: 7, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْكَوْثَر", surahNumber: 108, ayatNumber: 3, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْكَافِرُونَ", surahNumber: 109, ayatNumber: 6, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّصْر", surahNumber: 110, ayatNumber: 3, revelationPlace: "مدنية",ayahs: []),
  SurahModel(surahName: "الْمَسَد", surahNumber: 111, ayatNumber: 5, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْإِخْلَاص", surahNumber: 112, ayatNumber: 4, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "الْفَلَق", surahNumber: 113, ayatNumber: 5, revelationPlace: "مكية",ayahs: []),
  SurahModel(surahName: "النَّاس", surahNumber: 114, ayatNumber: 6, revelationPlace: "مكية",ayahs: []),
];
