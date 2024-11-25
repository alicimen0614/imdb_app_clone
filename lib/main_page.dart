import 'package:flutter/material.dart';
import 'package:imdb_clone/home_page.dart';
import 'package:imdb_clone/search_page.dart';
import 'package:imdb_clone/shorts_page.dart';
import 'package:imdb_clone/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

final List<Widget> pages = [
  HomePage(), //Ara sekmesi
  SearchPage(),
  ShortsPage(), UserPage()
];

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_rounded),
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.play_circle_outlined),
              activeIcon: Icon(Icons.play_circle_fill)),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(Icons.account_circle_rounded))
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,
      ),
    );
  }
}
