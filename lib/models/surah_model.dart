class SurahModel {
  final String surahName;
  final int surahNumber;
  final int ayatNumber;
  final String revelationPlace;
   List<Ayah>ayahs=[];

  SurahModel({
    required this.surahName,
    required this.surahNumber,
    required this.ayatNumber,
    required this.revelationPlace,
   required this.ayahs,
  });
  factory SurahModel.fromJson(Map<String, dynamic> json) {
    return SurahModel(
      surahNumber: json['suraNumber'],
      surahName: json['suraName'],
      ayatNumber: json['ayatNumber'],
      revelationPlace: json['revelationPlace'],
      ayahs: (json['ayahs'] as List).map((e) => Ayah.fromJson(e)).toList(),
    );
  }
}

class Ayah {
  final int ayahNumber;
  final String text;
  final int pageNumber;
  Ayah(
      {required this.ayahNumber, required this.text, required this.pageNumber});

  factory Ayah.fromJson(Map<String, dynamic> json) {
    return Ayah(
      ayahNumber: json['number'],
      text: json['text']['ar'],
      pageNumber: json['page'],
    );
  }
}
