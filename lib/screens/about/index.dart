import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lenten_companion/source/colors.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColor.color3,
          AppColor.color2,
        ]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(1, 10),
              blurRadius: 10,
              color: AppColor.color3.withOpacity(0.3)),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Expanded(
          // SingleChildScrollView contains a
          // single child which is scrollable
          child: SingleChildScrollView(
            // for Vertical scrolling
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical, //.horizontal
              child: RichText(
                text: TextSpan(
                  text: 'About Length\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.color1,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text:
                          'Lent is the period of 40 days which comes before Easter in the Christian calendar. Beginning on Ash Wednesday, Lent is a season of reflection and preparation before the celebrations of Easter. By observing the 40 days of Lent, Christians replicate Jesus Christ\'s sacrifice and withdrawal into the desert for 40 days. Lent is marked by fasting, both from food and festivities.\n\n',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Why 40 days?\n',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text:
                          'is a significant number in Jewish-Christian scripture:\n',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\u2022 In Genesis, the flood which destroyed the earth was brought about by 40 days and nights of rain.\n\u2022 The Hebrews spent 40 years in the wilderness before reaching the land promised to them by God.\n\u2022 Moses fasted for 40 days before receiving the ten commandments on Mount Sinai.\n\u2022 Jesus spent 40 days fasting in the wilderness in preparation for his ministry.',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
