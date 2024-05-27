import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/data.dart';
import 'package:flutter_netflix_clone_app/screens/details_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List _filteredResults = Data.allResults;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    _filterResults();
  }

  _filterResults() {
    List filtered = Data.allResults
        .where((item) => item['title']
            .toLowerCase()
            .contains(_searchController.text.toLowerCase()))
        .toList();

    setState(() {
      _filteredResults = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: getSearchBar(),
      ),
      body: getContent(),
    );
  }

  Widget getSearchBar() {
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
        width: size.width,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.withOpacity(0.25)),
        child: TextField(
          controller: _searchController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.9),
              )),
        ),
      ),
    );
  }

  Widget getContent() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Results",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
                children: List.generate(_filteredResults.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: (size.width - 36) * 0.8,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 70,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          _filteredResults[index]['img']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                _filteredResults[index]['title'],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width - 36) * 0.2,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.black.withOpacity(0.9)),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
