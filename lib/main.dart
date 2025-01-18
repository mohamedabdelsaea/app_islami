import 'package:flutter/material.dart';
import 'package:islame_app/layout/hadith.dart';
import 'package:islame_app/layout/layout.dart';
import 'package:islame_app/layout/sbha/quran_tap/quran.dart';
import 'package:islame_app/layout/sbha/quran_tap/quran_details_viwe.dart';
import 'package:islame_app/layout/radio/radio.dart';
import 'package:islame_app/layout/sbha/sbha.dart';
import 'package:islame_app/layout/times/times.dart';
import 'package:islame_app/onbording/pages/onbording.dart';
import 'package:islame_app/splash/splash_screen.dart';

import 'layout/quran_tap/quran.dart';
import 'layout/quran_tap/quran_details_viwe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Layout.routeName,
      routes: {
        SplashScreen.routeName: (BuildContext _) {
          return SplashScreen();
        },
        Layout.routeName: (BuildContext _) {
          return Layout();
        },
        Quran.routeName: (BuildContext _) {
          return Quran();
        },
        Hadith.routeName: (BuildContext _) {
          return Hadith();
        },
        Sbha.routeName: (BuildContext _) {
          return Sbha();
        },
        RadioScreen.routeName: (BuildContext _) {
          return RadioScreen();
        },
        Times.routeName: (BuildContext _) {
          return Times();
        },
        QuranDetailsView.routeName: (BuildContext _) {
          return QuranDetailsView();
        },
        Onboarding.routeName: (BuildContext _) {
          return Onboarding();
        },
      },
    );
  }
}
