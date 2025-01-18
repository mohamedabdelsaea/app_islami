import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/models/hadith_data.dart';
import 'package:islame_app/widget/hadith_widget.dart';

class Hadith extends StatefulWidget {
  static String routeName = 'Hadith';

  Hadith({super.key});

  @override
  State<Hadith> createState() => _HadithState();
}

class _HadithState extends State<Hadith> {
  List<HadithData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithDataList.isEmpty) {
      loadHadithData();
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/hadith_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Image.asset('assets/images/Logo8.png'),
            // HadithWidget(hadithData: hadithDataList[0]),
            Expanded(
              child: CarouselSlider(
                  items: hadithDataList.map((e) {
                    return HadithWidget(
                      hadithData: e,
                    );
                  }).toList(),
                  options: CarouselOptions(
                    // height: 400,
                    aspectRatio: 0.7,
                    viewportFraction: 0.68,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  )),
            )
          ],
        ),
      ),
    );
  }

  loadHadithData() async {
    String content = await rootBundle.loadString('assets/file/h${''}txt');

    List<String> singleHadith = content.split('\n');
    for (var element in singleHadith) {
      String singleHadith = element.trim();
      int index = singleHadith.indexOf('\n');
      String hadithContent = singleHadith.substring(index + 1);
      String hadithTitle = singleHadith.substring(0, index);
      var hadithData =
          HadithData(hadithTitle: hadithTitle, hadithContent: hadithContent);
      hadithDataList.add(hadithData);
      setState(() {});
    }
  }
}
