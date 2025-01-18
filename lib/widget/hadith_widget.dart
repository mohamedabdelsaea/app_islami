import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/models/hadith_data.dart';

class HadithWidget extends StatelessWidget {
  final HadithData hadithData;

  const HadithWidget({
    super.key,
    required this.hadithData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Hadith Card.png'),
          // fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            ' hadithData.hadithTitle',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.blacks,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    ' hadithData.hadithContent',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColor.blacks,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
