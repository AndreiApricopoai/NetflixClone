import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/data.dart';
import 'package:flutter_netflix_clone_app/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/banner1.webp"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.85),
                              Colors.black.withOpacity(0.0),
                            ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/banner_title.webp",
                              width: 300,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Excting - Sci-Fi Drama - Sci-Fi Adventure",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("My List",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.8),
                              ))
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Info",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.8),
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text("My List",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: List.generate(
                              Data.mylist.length,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    width: 110,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            Data.mylist[index]['img']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text("Popular on Netflix",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: List.generate(
                              Data.popularList.length,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    width: 110,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          Data.popularList[index]['img'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Top 10 in Romania Now",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: List.generate(Data.top10Romania.length,
                                (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          DetailScreen(), // Ensure this screen exists
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width:
                                                30, // Adjust the width as needed
                                            height: 160,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Image.asset(
                                                Data.digits[index]['img'],
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width:
                                                  5), // Space between digit and movie image
                                          Container(
                                            width: 110,
                                            height: 160,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    Data.top10Romania[index]
                                                        ['img']),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text("Netflix Originals",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: List.generate(
                              Data.originalList.length,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => DetailScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    width: 165,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              Data.originalList[index]['img']),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/logo.ico",
                                width: 35,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.collections_bookmark,
                                size: 28,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                "assets/icons/user_profile.png",
                                fit: BoxFit.cover,
                                width: 30,
                                height: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TV Shows",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "Movies",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white.withOpacity(0.8),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
