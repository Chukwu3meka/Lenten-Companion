import 'package:flutter/material.dart';
import 'package:lenten_companion/source/colors.dart';

class StationsOfTheCross extends StatefulWidget {
  const StationsOfTheCross({Key? key}) : super(key: key);

  @override
  _StationsOfTheCrossState createState() => _StationsOfTheCrossState();
}

class _StationsOfTheCrossState extends State<StationsOfTheCross> {
  List images = [
    "stations.jpg",
    "station1.jpg",
    "station2.jpg",
    "station3.jpg",
    "station4.jpg",
    "station5.jpg",
    "station6.jpg",
    "station7.jpg",
    "station8.jpg",
    "station9.jpg",
    "station10.jpg",
    "station11.jpg",
    "station12.jpg",
    "station13.jpg",
    "station14.jpg",
  ];

  List prayers = [
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Most merciful Lord, with a contrite heart and penitent spirit I bow down before Thy divine Majesty. I adore Thee as my supreme Lord and Master. I believe in Thee, I hope in Thee, I love Thee above all things. I am heartily sorry for having offended Thee, my only and supreme God. I firmly resolve to amend my life; and although I am unworthy to obtain mercy, yet looking upon Thy holy Cross I am filled with peace and consolation. I will, therefore, meditate on Thy sufferings, and visit the Stations in company with Thy sorrowful Mother and my holy Guardian Angel, to promote Thy honor and to save my soul.\nO Loving Jesus, * inflame my cold heart with Thy love, * that I may perform this devotion as perfectly as possible, * and that I may live and die in union with Thee.\nAmen.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.color5,
          fontSize: 20,
        ),
      ),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: LayoutBuilder(builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              List.generate(images.length, (currentStation) {
                            return Container(
                                margin: const EdgeInsets.only(
                                    left: 1, top: 3, right: 1, bottom: 10),
                                width: index == currentStation ? 15 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: index == currentStation
                                      ? AppColor.color3
                                      : AppColor.color2,
                                )
                                // child: Text("asdas")
                                );
                          }),
                        ),
                        Column(
                          children: [
                            Text(
                              "Preparatory Prayer",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColor.color5,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              // width: 300,
                              width: double.maxFinite,
                              height: 390,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "img/" + images[index],
                                    ),
                                    fit: BoxFit.fitWidth),
// borderRadius: BorderRadius.all(radius:BorderRadius(10))
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),

//
                            prayers[index]
//
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            );
          }),
    );
  }
}
