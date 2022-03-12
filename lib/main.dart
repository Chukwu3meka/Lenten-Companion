import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';
import 'colors.dart' as color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenten Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // home: Welcome(),
      home: Scaffold(
        backgroundColor: color.AppColor.backgroundOne,
        body: Container(
          padding: const EdgeInsets.only(
            top: 70,
            left: 5,
            right: 5,
            bottom: 30,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Lenten Companinon",
                    style: TextStyle(
                        fontSize: 30,
                        color: color.AppColor.textThree,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.health_and_safety_rounded)
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                height: 235,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.backgroundThree,
                    color.AppColor.backgroundTwo,
                  ]),
                  // color: color.AppColor.pryBg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 10),
                        blurRadius: 10,
                        color: color.AppColor.backgroundThree.withOpacity(0.3)),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Catholic Journey",
                        style: TextStyle(
                            fontSize: 16, color: color.AppColor.textOne),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Stations of the Cross According to the Method of Saint Francis of Assisi:",
                        style: TextStyle(
                            fontSize: 25, color: color.AppColor.textOne),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 20,
                                color: color.AppColor.textOne,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "30 mins",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: color.AppColor.textOne),
                              ),
                            ],
                          ),
                          // SizedBox(width: (double.maxFinite - 40)),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: color.AppColor.backgroundThree,
                                      blurRadius: 10,
                                      offset: Offset(4, 8))
                                ]),
                            child: Icon(
                              Icons.play_circle_fill,
                              color: color.AppColor.iconOne,
                              size: 60,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
