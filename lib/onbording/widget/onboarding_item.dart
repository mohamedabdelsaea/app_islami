import 'package:flutter/material.dart';
import 'package:islame_app/onbording/pages/onbordind_model.dart';

import '../../core/app_color.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModels onboardingModels;

  const OnboardingItem({super.key, required this.onboardingModels});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Image.asset(
          onboardingModels.imagePath,
          height: size.height * 0.4,
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        Text(
          onboardingModels.title,
          style: TextStyle(
            fontFamily: 'janna',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColor.golds,
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(
          onboardingModels.desc ?? '',
          style: TextStyle(
            fontFamily: 'janna',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColor.golds,
          ),
        ),
      ],
    );
  }
}
