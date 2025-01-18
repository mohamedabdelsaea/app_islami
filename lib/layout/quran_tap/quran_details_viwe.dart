import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/widget/sura_card_widget.dart';
import 'package:islame_app/widget/sura_widget.dart';

class QuranDetailsView extends StatefulWidget {
  static String routeName = 'QuranDetailsView';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SurahDAta;
    if (versesList.isEmpty) {
      loadData(args.id.toString());
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Soura Details Screen.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColor.golds,
          ),
          title: Text(
            args.nameEN,
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'janna',
                fontWeight: FontWeight.bold,
                color: AppColor.golds),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              args.nameAR,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'janna',
                  fontWeight: FontWeight.bold,
                  color: AppColor.golds),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => Text(
                  '${versesList[index]} [${index + 1}]',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'janna',
                      fontWeight: FontWeight.bold,
                      color: AppColor.golds),
                ),
                itemCount: versesList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadData(String surId) async {
    String content = await rootBundle.loadString('assets/files/$surId.txt');
    print(content);
    setState(() {
      versesList = content.split('\n');
    });
  }
}
