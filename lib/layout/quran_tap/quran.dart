import 'package:flutter/material.dart';
import 'package:islame_app/core/app_assets.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/layout/quran_tap/quran_details_viwe.dart';
import 'package:islame_app/layout/sbha/quran_tap/quran_details_viwe.dart';
import 'package:islame_app/layout/quran_tap/sura_data.dart';
import 'package:islame_app/models/recent_data.dart';
import 'package:islame_app/widget/quran_widget.dart';
import 'package:islame_app/widget/sura_widget.dart';

import '../../../widget/sura_card_widget.dart';

class Quran extends StatefulWidget {
  static String routeName = 'Quran';

  Quran({
    super.key,
  });

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<RecentData> recentDataList = [
    RecentData(
      suraNameEN: 'Al-Anbiya',
      suraNameAR: 'الأنبياء',
      suraVerses: '112 Verses',
    ),
    RecentData(
      suraNameEN: 'Al-Fatiha',
      suraNameAR: 'الفاتحه',
      suraVerses: '7 Verses',
    ),
  ];

  List<SurahDAta> surahList = [
    SurahDAta(
      id: 1,
      nameAR: "الفاتحه",
      nameEN: "Al-Fatiha",
      verses: '7',
    ),
    SurahDAta(id: 2, nameAR: "البقرة", nameEN: "Al-Baqarah", verses: '286'),
    SurahDAta(id: 3, nameAR: "آل عمران", nameEN: "Aal-E-Imran", verses: '200'),
    SurahDAta(id: 4, nameAR: "النساء", nameEN: "An-Nisa'", verses: '176'),
    SurahDAta(id: 5, nameAR: "المائدة", nameEN: "Al-Ma'idah", verses: '120'),
    SurahDAta(id: 6, nameAR: "الأنعام", nameEN: "Al-An'am", verses: '165'),
    SurahDAta(id: 7, nameAR: "الأعراف", nameEN: "Al-A'raf", verses: '206'),
    SurahDAta(id: 8, nameAR: "الأنفال", nameEN: "Al-Anfal", verses: '75'),
    SurahDAta(id: 9, nameAR: "التوبة", nameEN: "At-Tawbah", verses: '129'),
    SurahDAta(id: 10, nameAR: "يونس", nameEN: "Yunus", verses: '109'),
    SurahDAta(id: 11, nameAR: "هود", nameEN: "Hud", verses: '123'),
    SurahDAta(id: 12, nameAR: "يوسف", nameEN: "Yusuf", verses: '111'),
    SurahDAta(id: 13, nameAR: "الرعد", nameEN: "Ar-Ra'd", verses: '43'),
    SurahDAta(id: 14, nameAR: "إبراهيم", nameEN: "Ibrahim", verses: '52'),
    SurahDAta(id: 15, nameAR: "الحجر", nameEN: "Al-Hijr", verses: '99'),
    SurahDAta(id: 16, nameAR: "النحل", nameEN: "An-Nahl", verses: '128'),
    SurahDAta(id: 17, nameAR: "الإسراء", nameEN: "Al-Isra", verses: '111'),
    SurahDAta(id: 18, nameAR: "الكهف", nameEN: "Al-Kahf", verses: '110'),
    SurahDAta(id: 19, nameAR: "مريم", nameEN: "Maryam", verses: '98'),
    SurahDAta(id: 20, nameAR: "طه", nameEN: "Ta-Ha", verses: '135'),
    SurahDAta(id: 21, nameAR: "الأنبياء", nameEN: "Al-Anbiya", verses: '112'),
    SurahDAta(id: 22, nameAR: "الحج", nameEN: "Al-Hajj", verses: '78'),
    SurahDAta(id: 23, nameAR: "المؤمنون", nameEN: "Al-Mu'minun", verses: '118'),
    SurahDAta(id: 24, nameAR: "النّور", nameEN: "An-Nur", verses: '64'),
    SurahDAta(id: 25, nameAR: "الفرقان", nameEN: "Al-Furqan", verses: '77'),
    SurahDAta(id: 26, nameAR: "الشعراء", nameEN: "Ash-Shu'ara", verses: '227'),
    SurahDAta(id: 27, nameAR: "النّمل", nameEN: "An-Naml", verses: '93'),
    SurahDAta(id: 28, nameAR: "القصص", nameEN: "Al-Qasas", verses: '88'),
    SurahDAta(id: 29, nameAR: "العنكبوت", nameEN: "Al-Ankabut", verses: '69'),
    SurahDAta(id: 30, nameAR: "الرّوم", nameEN: "Ar-Rum", verses: '60'),
    SurahDAta(id: 31, nameAR: "لقمان", nameEN: "Luqman", verses: '34'),
    SurahDAta(id: 32, nameAR: "السجدة", nameEN: "As-Sajda", verses: '30'),
    SurahDAta(id: 33, nameAR: "الأحزاب", nameEN: "Al-Ahzab", verses: '73'),
    SurahDAta(id: 34, nameAR: "سبأ", nameEN: "Saba", verses: '54'),
    SurahDAta(id: 35, nameAR: "فاطر", nameEN: "Fatir", verses: '45'),
    SurahDAta(id: 36, nameAR: "يس", nameEN: "Ya-Sin", verses: '83'),
    SurahDAta(id: 37, nameAR: "الصافات", nameEN: "As-Saffat", verses: '182'),
    SurahDAta(id: 38, nameAR: "ص", nameEN: "Sad", verses: '88'),
    SurahDAta(id: 39, nameAR: "الزمر", nameEN: "Az-Zumar", verses: '75'),
    SurahDAta(id: 40, nameAR: "غافر", nameEN: "Ghafir", verses: '85'),
    SurahDAta(id: 41, nameAR: "فصّلت", nameEN: "Fussilat", verses: '54'),
    SurahDAta(id: 42, nameAR: "الشورى", nameEN: "Ash-Shura", verses: '53'),
    SurahDAta(id: 43, nameAR: "الزخرف", nameEN: "Az-Zukhruf", verses: '89'),
    SurahDAta(id: 44, nameAR: "الدّخان", nameEN: "Ad-Dukhan", verses: '59'),
    SurahDAta(id: 45, nameAR: "الجاثية", nameEN: "Al-Jathiya", verses: '37'),
    SurahDAta(id: 46, nameAR: "الأحقاف", nameEN: "Al-Ahqaf", verses: '35'),
    SurahDAta(id: 47, nameAR: "محمد", nameEN: "Muhammad", verses: '38'),
    SurahDAta(id: 48, nameAR: "الفتح", nameEN: "Al-Fath", verses: '29'),
    SurahDAta(id: 49, nameAR: "الحجرات", nameEN: "Al-Hujurat", verses: '18'),
    SurahDAta(id: 50, nameAR: "ق", nameEN: "Qaf", verses: '45'),
    SurahDAta(id: 51, nameAR: "الذاريات", nameEN: "Adh-Dhariyat", verses: '60'),
    SurahDAta(id: 52, nameAR: "الطور", nameEN: "At-Tur", verses: '49'),
    SurahDAta(id: 53, nameAR: "النجم", nameEN: "An-Najm", verses: '62'),
    SurahDAta(id: 54, nameAR: "القمر", nameEN: "Al-Qamar", verses: '55'),
    SurahDAta(id: 55, nameAR: "الرحمن", nameEN: "Ar-Rahman", verses: '78'),
    SurahDAta(id: 56, nameAR: "الواقعة", nameEN: "Al-Waqi'a", verses: '96'),
    SurahDAta(id: 57, nameAR: "الحديد", nameEN: "Al-Hadid", verses: '29'),
    SurahDAta(id: 58, nameAR: "المجادلة", nameEN: "Al-Mujadila", verses: '22'),
    SurahDAta(id: 59, nameAR: "الحشر", nameEN: "Al-Hashr", verses: '24'),
    SurahDAta(id: 60, nameAR: "الممتحنة", nameEN: "Al-Mumtahina", verses: '13'),
    SurahDAta(id: 61, nameAR: "الصف", nameEN: "As-Saff", verses: '11'),
    SurahDAta(id: 62, nameAR: "الجمعة", nameEN: "Al-Jumu'a", verses: '11'),
    SurahDAta(
        id: 63, nameAR: "المنافقون", nameEN: "Al-Munafiqun", verses: '18'),
    SurahDAta(id: 64, nameAR: "التغابن", nameEN: "At-Taghabun", verses: '18'),
    SurahDAta(id: 65, nameAR: "الطلاق", nameEN: "At-Talaq", verses: '12'),
    SurahDAta(id: 66, nameAR: "التحريم", nameEN: "At-Tahrim", verses: '12'),
    SurahDAta(id: 67, nameAR: "الملك", nameEN: "Al-Mulk", verses: '30'),
    SurahDAta(id: 68, nameAR: "القلم", nameEN: "Al-Qalam", verses: '52'),
    SurahDAta(id: 69, nameAR: "الحاقة", nameEN: "Al-Haqqah", verses: '56'),
    SurahDAta(id: 70, nameAR: "المعارج", nameEN: "Al-Ma'arij", verses: '40'),
    SurahDAta(id: 71, nameAR: "نوح", nameEN: "Nuh", verses: '31'),
    SurahDAta(id: 72, nameAR: "الجن", nameEN: "Al-Jinn", verses: '28'),
    SurahDAta(id: 73, nameAR: "المزّمّل", nameEN: "Al-Muzzammil", verses: '20'),
    SurahDAta(id: 74, nameAR: "المدّثر", nameEN: "Al-Muddathir", verses: '56'),
    SurahDAta(id: 75, nameAR: "القيامة", nameEN: "Al-Qiyamah", verses: '40'),
    SurahDAta(id: 76, nameAR: "الإنسان", nameEN: "Al-Insan", verses: '31'),
    SurahDAta(id: 77, nameAR: "المرسلات", nameEN: "Al-Mursalat", verses: '50'),
    SurahDAta(id: 78, nameAR: "النبأ", nameEN: "An-Naba'", verses: '40'),
    SurahDAta(id: 79, nameAR: "النازعات", nameEN: "An-Nazi'at", verses: '46'),
    SurahDAta(id: 80, nameAR: "عبس", nameEN: "Abasa", verses: '42'),
    SurahDAta(id: 81, nameAR: "التكوير", nameEN: "At-Takwir", verses: '29'),
    SurahDAta(id: 82, nameAR: "الإنفطار", nameEN: "Al-Infitar", verses: '19'),
    SurahDAta(
        id: 83, nameAR: "المطفّفين", nameEN: "Al-Mutaffifin", verses: '36'),
    SurahDAta(id: 84, nameAR: "الإنشقاق", nameEN: "Al-Inshiqaq", verses: '25'),
    SurahDAta(id: 85, nameAR: "البروج", nameEN: "Al-Buruj", verses: '22'),
    SurahDAta(id: 86, nameAR: "الطارق", nameEN: "At-Tariq", verses: '17'),
    SurahDAta(id: 87, nameAR: "الأعلى", nameEN: "Al-A'la", verses: '19'),
    SurahDAta(id: 88, nameAR: "الغاشية", nameEN: "Al-Ghashiyah", verses: '26'),
    SurahDAta(id: 89, nameAR: "الفجر", nameEN: "Al-Fajr", verses: '30'),
    SurahDAta(id: 90, nameAR: "البلد", nameEN: "Al-Balad", verses: '20'),
    SurahDAta(id: 91, nameAR: "الشمس", nameEN: "Ash-Shams", verses: '15'),
    SurahDAta(id: 92, nameAR: "الليل", nameEN: "Al-Lail", verses: '21'),
    SurahDAta(id: 93, nameAR: "الضحى", nameEN: "Ad-Duha", verses: '11'),
    SurahDAta(id: 94, nameAR: "الشرح", nameEN: "Ash-Sharh", verses: '8'),
    SurahDAta(id: 95, nameAR: "التين", nameEN: "At-Tin", verses: '8'),
    SurahDAta(id: 96, nameAR: "العلق", nameEN: "Al-Alaq", verses: '19'),
    SurahDAta(id: 97, nameAR: "القدر", nameEN: "Al-Qadr", verses: '5'),
    SurahDAta(id: 98, nameAR: "البينة", nameEN: "Al-Bayyina", verses: '8'),
    SurahDAta(id: 99, nameAR: "الزلزلة", nameEN: "Az-Zalzalah", verses: '8'),
    SurahDAta(id: 100, nameAR: "العاديات", nameEN: "Al-Adiyat", verses: '11'),
    SurahDAta(id: 101, nameAR: "القارعة", nameEN: "Al-Qari'a", verses: '11'),
    SurahDAta(id: 102, nameAR: "التكاثر", nameEN: "At-Takathur", verses: '8'),
    SurahDAta(id: 103, nameAR: "العصر", nameEN: "Al-Asr", verses: '3'),
    SurahDAta(id: 104, nameAR: "الهمزة", nameEN: "Al-Humazah", verses: '9'),
    SurahDAta(id: 105, nameAR: "الفيل", nameEN: "Al-Fil", verses: '5'),
    SurahDAta(id: 106, nameAR: "قريش", nameEN: "Quraysh", verses: '4'),
    SurahDAta(id: 107, nameAR: "الماعون", nameEN: "Al-Ma'un", verses: '7'),
    SurahDAta(id: 108, nameAR: "الكوثر", nameEN: "Al-Kawthar", verses: '3'),
    SurahDAta(id: 109, nameAR: "الكافرون", nameEN: "Al-Kafirun", verses: '6'),
    SurahDAta(id: 110, nameAR: "النصر", nameEN: "An-Nasr", verses: '3'),
    SurahDAta(id: 111, nameAR: "المسد", nameEN: "Al-Masad", verses: '5'),
    SurahDAta(id: 112, nameAR: "الإخلاص", nameEN: "Al-Ikhlas", verses: '4'),
    SurahDAta(id: 113, nameAR: "الفلق", nameEN: "Al-Falaq", verses: '5'),
    SurahDAta(id: 114, nameAR: "الناس", nameEN: "An-Nas", verses: '6')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/quran_bg.png'),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/Logo55.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: TextStyle(
                  color: AppColor.titleColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: AppColor.whites,
                decoration: InputDecoration(
                  hintText: 'Sura Named',
                  hintStyle: TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: AppColor.blacks.withOpacity(0.5),
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage(AppAssets.quran),
                      color: AppColor.titleColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColor.whites,
                    ),
                  ),
                  focusColor: AppColor.blacks,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Most Recently',
                style: TextStyle(
                  color: AppColor.whites,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => QuranWidget(
                  recentData: recentDataList[index],
                ),
                itemCount: recentDataList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Sura List',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.whites,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: surahList.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => _onSuraTap(index),
                child: SuraWidget(
                  surahDAta: surahList[index],
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                endIndent: 60,
                indent: 60,
                thickness: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onSuraTap(int index) {
    Navigator.pushNamed(context, QuranDetailsView.routeName,
        arguments: surahList[index]);
  }
}
