import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/onbording/pages/onbordind_model.dart';
import 'package:islame_app/onbording/widget/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  static String routeName = 'Onboarding';

  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.blacks,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/Logo8.png',
            height: size.height * 0.20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: OnboardingModels.onboardingList.length,
              itemBuilder: (context, index) {
                var onboardingModels = OnboardingModels.onboardingList[index];
                return OnboardingItem(
                  onboardingModels: onboardingModels,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontFamily: 'janna',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColor.golds,
                    ),
                  ),
                ),
                AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 5,
                  effect: SwapEffect(
                    activeDotColor: AppColor.golds,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'janna',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColor.golds,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
