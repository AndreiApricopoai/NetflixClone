import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/data.dart';

class ComingNextScreen extends StatefulWidget {
  @override
  _ComingNextScreenState createState() => _ComingNextScreenState();
}

class _ComingNextScreenState extends State<ComingNextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: getAppBar(),
      ),
      body: getContent(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: Text("Coming Next",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.9),
          )),
      actions: [
        IconButton(
            icon: Icon(
              Icons.collections_bookmark,
              size: 28,
            ),
            onPressed: () {}),
        IconButton(
            icon: Image.asset(
              "assets/icons/user_profile.png",
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            onPressed: () {}),
      ],
    );
  }

  Widget getContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 28,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9)),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Colors.white.withOpacity(0.9),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(Data.comingNextList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        Data.comingNextList[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Data.comingNextList[index]['title_img'],
                            width: 120,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.notifications_none_outlined),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Remind me",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white.withOpacity(0.6),
                                      ))
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.info_outline),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Info",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white.withOpacity(0.6),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        Data.comingNextList[index]['date'],
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(Data.comingNextList[index]['title'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white.withOpacity(0.9),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        Data.comingNextList[index]['description'],
                        style: TextStyle(
                            height: 1.4, color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        Data.comingNextList[index]['type'],
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Colors.white.withOpacity(0.9)),
                      ),
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
