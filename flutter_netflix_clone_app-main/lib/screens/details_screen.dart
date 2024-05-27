import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String description;

  const DetailScreen({
    Key? key,
    this.thumbnail = 'assets/images/default_thumbnail.jpg',
    this.title = 'Default Title',
    this.description = 'Default Description',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: getAppBar(context),
      ),
      body: getBody(size),
    );
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.collections_bookmark,
            size: 28,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/images/profile.jpeg",
            fit: BoxFit.cover,
            width: 26,
            height: 26,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget getBody(Size size) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(thumbnail),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    height: 1.4,
                    fontSize: 28,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                    height: 1.4,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
