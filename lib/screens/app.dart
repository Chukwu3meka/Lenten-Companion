import 'package:flutter/material.dart';
import 'package:lenten_companion/screens/home/index.dart';
import 'package:lenten_companion/screens/about/index.dart';
import 'package:lenten_companion/screens/meditation/index.dart';
import 'package:lenten_companion/screens/stationsOfTheCross/index.dart';
import 'package:lenten_companion/source/colors.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<App> {
  int currentIndex = 4;

  List notifications = [];

  // final  Map<String, Object>rcvdData = ModalRoute.of(context).settings.arguments;
  // print("rcvd fdata ${rcvdData['name']}");
  // print("rcvd fdata ${rcvdData}");

  void navigateToScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

// 0 === others
// 1 === Home
// 2 === About
// 0 === Meditation

  // List screens = [
  //   Home,
  //   About,
  //   About,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.color3.withOpacity(.8),
        title: Text("My Lenten Companinon", style: TextStyle(fontSize: 25)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Show Snackbar',
            onPressed: () {
              if (!notifications.isNotEmpty) {
                navigateToScreen(1);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const About()),
                // );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No new Notification')));
              }
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        // child:   screens[currentIndex](navigateToScreen) ,
        child:
            MainBody(screen: currentIndex, navigateToScreen: navigateToScreen),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigateToScreen,
        elevation: 0,
        currentIndex: currentIndex != 1 && currentIndex != 2 ? 0 : currentIndex,
        showSelectedLabels: false,
        backgroundColor: AppColor.color3,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.color4,
        unselectedItemColor: AppColor.color1,
        items: [
          BottomNavigationBarItem(
            label: "Other",
            icon: Icon(Icons.radar),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "About",
            icon: Icon(Icons.info_sharp),
          ),
        ],
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  // In the constructor, require a Todo.
  const MainBody(
      {Key? key, required this.screen, required this.navigateToScreen})
      : super(key: key);

  // Declare a field that holds the Todo.
  final int screen;
  final Function navigateToScreen;

  // const MainBody({Key? key, this.screen, this.navigateToScreen})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return screen == "home" ? Home(navigateToScreen) : About();
    return screen == 1
        ? Home(navigateToScreen: navigateToScreen)
        : screen == 2
            ? About()
            : screen == 3
                ? Meditation()
                : screen == 4
                    ? StationsOfTheCross()
                    : Home(navigateToScreen: navigateToScreen);

    // navigateToScreen
//         child: Home(navigateToScreen),
  }
}
