import 'package:flutter/material.dart';

import '../core/app_color.dart';

class NavBar extends StatelessWidget {
  final int selectIndex;
  final int navBar;
  final String iconPath;

  const NavBar({
    super.key,
    required this.selectIndex,
    required this.navBar,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectIndex == navBar
            ? AppColor.blacks.withOpacity(0.5)
            : Colors.transparent,
      ),
      child: ImageIcon(
        AssetImage(iconPath),
      ),
    );
  }
}
