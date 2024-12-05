import 'package:flutter/material.dart';
import 'package:imdb_clone/screens/home_page.dart';
import 'package:imdb_clone/screens/search_page.dart';
import 'package:imdb_clone/screens/shorts_page.dart';
import 'package:imdb_clone/screens/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

final List<Widget> pages = [
  const HomePage(), //Ara sekmesi
  const SearchPage(),
  const ShortsPage(), const UserPage()
];

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
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
