import 'package:flutter/cupertino.dart';
import 'package:lenten_companion/source/colors.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      // color: AppColor.color3,
// padding: const,
      child: Column(
        children: [
          Text(
            "About",
            style: TextStyle(color: AppColor.color3),
          )
        ],
      ),
    );
  }
}
