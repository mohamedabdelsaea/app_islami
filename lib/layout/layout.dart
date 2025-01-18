import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islame_app/core/app_assets.dart';
import 'package:islame_app/core/app_color.dart';
import 'package:islame_app/layout/hadith.dart';
import 'package:islame_app/layout/quran_tap/quran.dart';
import 'package:islame_app/layout/sbha/quran_tap/quran.dart';
import 'package:islame_app/layout/radio/radio.dart';
import 'package:islame_app/layout/sbha/sbha.dart';
import 'package:islame_app/layout/times/times.dart';

import '../widget/nav_bar.dart';

class Layout extends StatefulWidget {
  static String routeName = 'Layout';

  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectIndex = 0;
  List<Widget> taps = [
    Quran(),
    Hadith(),
    Sbha(),
    RadioScreen(),
    Times(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          selectIndex = index;
          setState(() {});
        },
        currentIndex: selectIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.golds,
        fixedColor: AppColor.whites,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: NavBar(
              selectIndex: selectIndex,
              navBar: 0,
              iconPath: AppAssets.quran,
            ),
            label: 'quran',
          ),
          BottomNavigationBarItem(
            icon: NavBar(
                selectIndex: selectIndex,
                navBar: 1,
                iconPath: AppAssets.hadith),
            label: 'hadith',
          ),
          BottomNavigationBarItem(
            icon: NavBar(
                selectIndex: selectIndex, navBar: 2, iconPath: AppAssets.sbha),
            label: 'sbha',
          ),
          BottomNavigationBarItem(
            icon: NavBar(
                selectIndex: selectIndex, navBar: 3, iconPath: AppAssets.radio),
            label: 'radio',
          ),
          BottomNavigationBarItem(
            icon: NavBar(
                selectIndex: selectIndex, navBar: 4, iconPath: AppAssets.times),
            label: 'times',
          ),
        ],
      ),
      body: taps[selectIndex],
    );
  }
}
