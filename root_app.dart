import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center (
          child: Text("Home", style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Text("Library", style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        ),
        Center (
          child: Text("Search", style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        ),
        Center (
          child: Text("Setting", style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }

  Widget getFooter() {
    List<IconData> items = [
        FeatherIcons.home,
        FeatherIcons.book,
        FeatherIcons.search,
        FeatherIcons.settings,



    ];
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              icon: Icon(
                items[index],
                color: activeTab == index ? Colors.blue : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}


