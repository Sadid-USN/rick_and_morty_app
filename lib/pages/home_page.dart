import 'package:flutter/material.dart';
import 'package:rick_and_morty/pages/character_page.dart';
import 'package:rick_and_morty/pages/episodes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    CharacterPage(
      title: 'Character Page',
    ),
    const EpisodesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Colors.white,
        currentIndex: pageIndex,
        onTap: (index) => setState(() {
          pageIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Character',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              size: 30,
            ),
            label: 'Episodes',
          ),
        ],
      ),
    );
  }
}
