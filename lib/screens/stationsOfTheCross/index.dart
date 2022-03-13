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
    "stations.jpg",
  ];

  List stationTitle = [
    'Opening Prayer: Preparatory Prayer',
    'The First Station Pilate Condemns Jesus to Die',
    'The Second Station: Jesus Accepts His Cross',
    'The Third Station: Jesus Falls the First Time',
    'The Fourth Station: Jesus Meets His Afflicted Mother',
    'The Fifth Station: Simon Helps Jesus Carry the Cross',
    'The Sixth Station: Veronica Offers Her Veil to Jesus',
    'The Seventh Station: Jesus Falls the Second Time',
    'The Eighth Station: Jesus Speaks to the Women',
    'The Ninth Station: Jesus Falls the Third Time',
    'The Tenth Station: Jesus Is Stripped of His Garments',
    'The Eleventh Station: Jesus Is Nailed to the Cross',
    'The Twelfth Station: Jesus Dies Upon the Cross',
    'The Thirteenth Station: Jesus Is Taken Down from the Cross',
    'The Fourteenth Station: Jesus Is Placed in the Sepulcher',
    'Prayer to Jesus Christ Crucified',
  ];

  List prayers = [
    Prayer(prayer: '''
ALL: My Lord, Jesus Christ, You have made this journey to die for me with unspeakable love; and I have so many times ungratefully abandoned You. | But now I love You with all my heart; and, because I love You, I am sincerely sorry for ever having offended You. Pardon me, my God, and permit me to accompany You on this journey. You go to die for love of me; I want, my beloved Redeemer, to die for love of You. My Jesus, I will live and die always united to You.

At the cross her station keeping 
Stood the mournful Mother weeping 
Close to Jesus to the last
''', hymn: ""),
    Prayer(prayer: '''
V: We adore You, O Christ, and we praise You. (Genuflect)
R: Because, by Your holy cross, You have redeemed the world. (Rise)

V: Consider how Jesus Christ, after being scourged and crowned with thorns, was unjustly condemned by Pilate to die on the cross. (Kneel)
R: My adorable Jesus, 

It was not Pilate; no, it was my sins that condemned You to die. I beseech You, by the merits of this sorrowful journey, to assist my soul on its journey to eternity. I love You, beloved Jesus; 
I love You more than I love myself. With all my heart I repent of ever having offended You. Grant that I may love You always; and then do with me as You will.

(Our Father, Hail Mary, Glory be.)
''', hymn: '''Through her heart, His sorrow sharing 
All His bitter anguish bearing 
Now at length the sword has passed
'''),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
    Prayer(
      prayer: '''
''',
      hymn: '''
''',
    ),
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
                                    right: 1, left: 1, bottom: 10, top: 5),
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
                        Text(stationTitle[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22,
                                color: AppColor.color5,
                                fontWeight: FontWeight.w700)),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              // width: 300,
                              width: double.maxFinite,
                              height: 500,
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

class Prayer extends StatelessWidget {
  const Prayer({Key? key, required this.prayer, required this.hymn})
      : super(key: key);

  final String hymn;
  final String prayer;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: prayer,
        style: TextStyle(
            fontSize: 22,
            color: AppColor.color5.withOpacity(.9),
            fontWeight: FontWeight.w500),
        children: <TextSpan>[
          TextSpan(
            text: "\n\n" + hymn,
            style: TextStyle(
              fontSize: 22,
              color: AppColor.color3,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
