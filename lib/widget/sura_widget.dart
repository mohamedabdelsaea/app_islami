import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/layout/quran_tap/sura_data.dart';
import 'package:islame_app/widget/sura_card_widget.dart';
import 'package:islame_app/widget/sura_card_widget.dart';
import 'package:islame_app/widget/sura_card_widget.dart';

import 'sura_card_widget.dart';

class SuraWidget extends StatelessWidget {
  final SurahDAta surahDAta;

  const SuraWidget({super.key, required this.surahDAta});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/sura_icon.png'),
              ),
            ),
            child: Text(
              surahDAta.id.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.whites,
              ),
            ),
          ),
          // Image.asset('assets/icons/sura_icon.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                surahDAta.nameEN,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.whites,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${surahDAta.verses} verses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColor.whites,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              surahDAta.nameAR.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: AppColor.whites,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
