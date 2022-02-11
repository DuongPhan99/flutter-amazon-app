import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final int selected;
  final Function press;
  Categories({this.press, this.selected});
  final category = ['Ebook', 'AudioBook'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5.0)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => press(index),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  width: 140.0,
                  decoration: BoxDecoration(
                      color:
                          selected == index ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(category[index]),
                ),
              )),
    );
  }
}
