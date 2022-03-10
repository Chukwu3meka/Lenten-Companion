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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
                        color: color.AppColor.textOne,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.health_and_safety_rounded)
                ],
              ),
              SizedBox(height: 30),
              Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.backgroundTwo,
                      color.AppColor.backgroundThree,
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
                          color:
                              color.AppColor.backgroundThree.withOpacity(0.3)),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
