import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/data.dart';

class DetailScreen extends StatelessWidget {
  final int id;

  const DetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final item = Data.allResults.firstWhere((element) => element['id'] == id,
        orElse: () => {
              'img': 'assets/images/z.webp',
              'title': 'Default Title',
              'description': 'Default Description',
              'ismovie': true,
              'category': 'Unknown'
            });

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: getAppBar(context),
      ),
      body: getBody(size, item, context),
    );
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
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
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.collections_bookmark,
            size: 28,
            color: Colors.white,
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
    );
  }

  Widget getBody(Size size, Map item, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item['img']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: 220,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title'],
                  style: TextStyle(
                    height: 1.4,
                    fontSize: 28,
                    color: Color(int.parse('0xFFb30000')),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['description'],
                        style: TextStyle(
                          height: 1.4,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Type: ${item['ismovie'] ? 'Movie' : 'TV Show'}",
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Category: ${item['category']}",
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _addToMyList(item, context);
                    },
                    icon: Icon(Icons.add, color: Colors.white),
                    label:
                        Text("My List", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(int.parse('0xFFb30000')),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _addToMyList(Map item, BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    if (!Data.mylist.any((element) => element['id'] == item['id'])) {
      Data.mylist.add(item);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(int.parse('0xFF00b300')),
          content: Text('${item['title']} added to My List'),
          showCloseIcon: true,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${item['title']} is already in My List'),
          backgroundColor: Color(int.parse('0xFFb30000')),
          showCloseIcon: true,
        ),
      );
    }
  }
}
