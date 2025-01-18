import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';

class Sbha extends StatefulWidget {
  static String routeName = 'Sbha';

  const Sbha({super.key});

  @override
  State<Sbha> createState() => _SbhaState();
}

class _SbhaState extends State<Sbha> {
  int counter = 0;
  double angel = 0;
  int currantIndex = 0;
  List<String> list = [
    'سبحان الله',
    'الحمدلله',
    'الله واكبر',
    "لاالله الا الله"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Background_sbha.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/Logo8.png',
            height: size.height * 0.15,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: Text(
              list[currantIndex],
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.whites),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Image.asset('assets/images/Mask group.png'),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    counter.toString(),
                    style: TextStyle(
                      color: AppColor.whites,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'janna',
                    ),
                  ),
                  GestureDetector(
                    onTap: _onSbha,
                    child: Stack(
                      children: [
                        Transform.rotate(
                            angle: angel,
                            child: Image.asset('assets/images/sbha_aa.png')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _onSbha() {
    counter++;
    angel += 6;
    if (counter == 33) {
      counter = 0;
      currantIndex++;
      if (currantIndex == 4) currantIndex = 0;
    }
    setState(() {});
  }
}
