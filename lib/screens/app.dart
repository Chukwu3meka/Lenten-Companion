import 'package:flutter/material.dart';
import 'package:lenten_companion/screens/home/index.dart';
import 'package:lenten_companion/screens/profile/profile.dart';
import 'package:lenten_companion/screens/welcome/index.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<App> {
  List screens = [
    Home(),
    Profile(),
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
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No new Notification')));
              }
            },
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        elevation: 0,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Profile"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
