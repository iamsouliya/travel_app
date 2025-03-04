import 'package:flutter/material.dart';
import 'package:travel_app/screens/about.dart';
import 'package:travel_app/screens/bookmark.dart';
import 'package:travel_app/screens/home.dart';
import 'package:travel_app/screens/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Bookmark(),
    About(),
    const Settting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[800],
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
