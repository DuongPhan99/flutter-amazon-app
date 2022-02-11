import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/home/compoment/book_staggered_grid_view.dart';
import 'package:flutter_e_book_app/screen/home/compoment/build_categories.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentselect = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(
          selected: currentselect,
          press: (int index) {
            setState(() {
              currentselect = index;
            });
            pageController.jumpToPage(index);
          },
        ),
        Expanded(
            child: BookStaggeresGridView(
          pageController: pageController,
          selected: currentselect,
          press: (int index) {
            setState(() {
              currentselect = index;
            });
          },
        ))
      ],
    );
  }
}
