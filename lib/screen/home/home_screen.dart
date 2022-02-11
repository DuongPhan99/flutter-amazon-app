import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'compoment/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentselect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: Body(),
        bottomNavigationBar: buildNavbar());
  }

  Widget buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      centerTitle: true,
      title: Text(
        "All Books",
        style: TextStyle(color: Colors.black54),
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {})
      ],
    );
  }

  Widget buildNavbar() {
    final navbarList = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline
    ];
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.amber[50],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.1))
          ]),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentselect = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.only(left: 20.0, top: 15.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        navbarList[index],
                        size: 30.0,
                        color:
                            currentselect == index ? Colors.black : Colors.grey,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 2,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: currentselect == index
                                ? Colors.amber
                                : Colors.transparent),
                      )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10.0,
              ),
          itemCount: navbarList.length),
    );
  }
}
