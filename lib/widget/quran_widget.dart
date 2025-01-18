import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';

import '../models/recent_data.dart';

class QuranWidget extends StatelessWidget {
  final RecentData recentData;

  const QuranWidget({super.key, required this.recentData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.titleColor,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recentData.suraNameEN,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentData.suraNameAR,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentData.suraVerses,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset('assets/images/quran_search.png'),
        ],
      ),
    );
  }
}
