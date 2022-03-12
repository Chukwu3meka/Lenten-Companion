import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lenten_companion/source/colors.dart';

class Meditation extends StatelessWidget {
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
        borderRadius: BorderRadius.all(
          Radius.circular(10),
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
                  text: 'Lenten Meditation\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.color1,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text:
                          'Lenten meditation is a process of self-reflection that many Christians practice during Lent, the part of the Christian liturgical year lasting from Ash Wednesday to Easter. Lent lasts for 40 days, reflecting the 40 days that Jesus, according to the Gospels, spent fasting and praying in the desert. There are three main practices that Christians, depending on their particular denomination, are expected to increase or start during Lent: fasting, prayer, and almsgiving. The prayer aspect often comes in the form of Lenten meditation, in which an individual spends time reflecting on his relationship with God, his past sins, and how to be a better person. For some people, such meditation is a highly personal process while others may gather at a church several times each week for formalized group meditation sessions.\n\nWhile many forms of meditation are based on blocking out all worldly concerns and attaining a state of deep relaxation, Lenten meditation is based on pointedly reflecting on one\'s life and relationship with God. In practice, this differs little from other forms of meditation. If one wants to meditate alone, he should find a quiet and secluded place where he can be alone at least a few minutes. Upon doing so, one generally sits or lies down and pushes immediate concerns relating to work, personal relationships, money, and other worldly things out of one\'s mind. With these thoughts pushed to the side, one is free to ponder God and how to change one\'s life to align oneself more perfectly with God.',
                      style: TextStyle(
                        fontSize: 25,
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
