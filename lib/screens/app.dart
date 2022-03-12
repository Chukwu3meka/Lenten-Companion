import 'package:flutter/material.dart';
import 'package:lenten_companion/screens/home/index.dart';
import 'package:lenten_companion/screens/about/index.dart';
import 'package:lenten_companion/screens/welcome/index.dart';
import 'package:lenten_companion/source/colors.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<App> {
  List screens = [
    Home(),
    About(),
  ];

  int currentIndex = 0;

  List notifications = [];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('AppBar Demo'),
        backgroundColor: AppColor.color3.withOpacity(.8),
        title: Text(
          "My Lenten Companinon",
          style: TextStyle(
            fontSize: 25,
          ),
        ),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Show Snackbar',
            onPressed: () {
              if (notifications.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
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
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        elevation: 0,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        backgroundColor: AppColor.color3,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.color4,
        unselectedItemColor: AppColor.color1,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("About"),
            icon: Icon(Icons.info_sharp),
          ),
        ],
      ),
    );
  }
}
