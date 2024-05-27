import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/data.dart';
import 'package:flutter_netflix_clone_app/screens/coming_next_screen.dart';
import 'package:flutter_netflix_clone_app/screens/home_page_screen.dart';
import 'package:flutter_netflix_clone_app/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getNavbar(),
      body: getContent(),
    );
  }

  Widget getContent() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomeScreen(),
        ComingNextScreen(),
        SearchScreen(),
      ],
    );
  }

  Widget getNavbar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(Data.navs.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Data.navs[index]['icon'],
                    color: activeTab == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    Data.navs[index]['text'],
                    style: TextStyle(
                      fontSize: 10,
                      color: activeTab == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
