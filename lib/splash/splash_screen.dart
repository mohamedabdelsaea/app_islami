import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/layout/layout.dart';
import 'package:islame_app/onbording/pages/onbording.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'SplashScreen';
  static Duration _duration = Duration(seconds: 2);

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Layout.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/SplashScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            FadeInDown(
              duration: SplashScreen._duration,
              child: Container(
                alignment: Alignment.topRight,
                height: size.height * 0.30,
                child: Image.asset('assets/images/SplashScreen2.png'),
              ),
            ),
            ZoomIn(
              duration: SplashScreen._duration,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.40,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ),
            FadeInRight(
              duration: SplashScreen._duration,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/images/SplashScreen4.png',
                    width: size.width * 0.20,
                  ),
                ),
              ),
            ),
            FadeInLeft(
              duration: SplashScreen._duration,
              child: Container(
                margin: EdgeInsets.only(bottom: size.height * 0.25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/images/SplashScreen3.png'),
                ),
              ),
            ),
            FadeInUp(
              duration: SplashScreen._duration,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.70),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/SplashScreen5.png',
                    width: size.width * 0.45,
                  ),
                ),
              ),
            ),
            FadeInUp(
              duration: SplashScreen._duration,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.85),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Supervised by Mohamed Nabil.png',
                    width: size.width * 0.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
