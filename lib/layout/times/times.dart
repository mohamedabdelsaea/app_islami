import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/core/app_color.dart';

class Times extends StatelessWidget {
  static String routeName = 'Times';

  const Times({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_t.png'),
          fit: BoxFit.cover,
        ),
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
              SizedBox(height: size.height * 0.03),
              CalendarTimeline(
                showYears: true,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020, 1, 1),
                lastDate: DateTime(2035, 12, 31),
                onDateSelected: (date) => print(date),
                leftMargin: 22,
                monthColor: Colors.blueGrey,
                dayColor: Colors.teal[200],
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent,
                selectableDayPredicate: (date) => date.day != 23,
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Azkar',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'janna',
                      color: AppColor.whites),
                ),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/times_1.png',
                            width: size.width * 0.45,
                          ),
                          Image.asset(
                            'assets/images/times_2.png',
                            width: size.width * 0.45,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/times_3.png',
                            width: size.width * 0.45,
                          ),
                          Image.asset(
                            'assets/images/times_4.png',
                            width: size.width * 0.45,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
