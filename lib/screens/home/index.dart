import 'package:flutter/material.dart';
import '../../source/colors.dart' as color;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

// List quotes = [
//   { quote: "dsfasdfsd",author:"sdafdsa"}
// ]

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    height: 235,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        color.AppColor.color3,
                        color.AppColor.color2,
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
                            color: color.AppColor.color3.withOpacity(0.3)),
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
                                fontSize: 16, color: color.AppColor.color1),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Stations of the Cross According to the Method of Saint Francis of Assisi:",
                            style: TextStyle(
                                fontSize: 25, color: color.AppColor.color1),
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
                                    color: color.AppColor.color1,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "30 mins",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: color.AppColor.color1),
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
                                          color: color.AppColor.color3,
                                          blurRadius: 10,
                                          offset: Offset(4, 8))
                                    ]),
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: color.AppColor.color4,
                                  size: 60,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: double.maxFinite,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:
                                    AssetImage("img/resolutionBackground.jpg"),
                                fit: BoxFit.fill),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 40,
                                  offset: Offset(2, 2),
                                  color: color.AppColor.color3.withOpacity(.3))
                            ],
                          ),
                        ),
                        // Center(
                        //   child:
                        Container(
                          height: double.maxFinite,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("img/crucifix.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        // ),
                        Container(
                          height: 160,
                          width: double.maxFinite,
                          margin: const EdgeInsets.only(
                              left: 120, top: 35, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '''Pray, Hope and Don't Worry.
Worry is useless. God is merciful and will hear your prayers
''',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: color.AppColor.color1),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "St. Padre Pio",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: color.AppColor.color1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0.0, -45.0, 0.0),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        color.AppColor.color3,
                        color.AppColor.color2,
                      ]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 10),
                            blurRadius: 10,
                            color: color.AppColor.color3.withOpacity(0.3)),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Daily Meditation",
                            style: TextStyle(
                                fontSize: 25, color: color.AppColor.color1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
