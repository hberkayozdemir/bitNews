import 'package:bithaber/presentation/pages/coins.dart';
import 'package:bithaber/presentation/pages/mylist.dart';
import 'package:bithaber/presentation/pages/profile.dart';
import 'package:bithaber/presentation/pages/news_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Coins(),
    MyList(),
    NewsPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo1.png',
                fit: BoxFit.contain,
                height: 50,
              ),
            ],
          )),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            title: Text("My List"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            title: Text("News"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: _currentIndex == 0
          ? FloatingActionButton(
              backgroundColor: Colors.indigo,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              child: Icon(Icons.check),
            )
          : null,
    );
  }
}
