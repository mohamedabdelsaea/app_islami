import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';

class RadioScreen extends StatelessWidget {
  static String routeName = 'RadioScreen';

  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Background_radio.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/Logo8.png',
                height: size.height * 0.2,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Column(
                children: [
                  Image.asset('assets/images/radio_1.png'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Image.asset('assets/images/radio_2.png'),
                  Image.asset('assets/images/radio_1.png'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Image.asset('assets/images/radio_2.png'),
                  Image.asset('assets/images/radio_1.png'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Image.asset('assets/images/radio_2.png'),
                  Image.asset('assets/images/radio_1.png'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Image.asset('assets/images/radio_2.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
