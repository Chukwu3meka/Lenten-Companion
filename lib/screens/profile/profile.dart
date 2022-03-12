import 'package:flutter/cupertino.dart';
import 'package:lenten_companion/source/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      // color: AppColor.backgroundThree,
// padding: const,
      child: Column(
        children: [
          Text(
            "Profile",
            style: TextStyle(color: AppColor.textThree),
          )
        ],
      ),
    );
  }
}
