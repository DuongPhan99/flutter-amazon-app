import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/detail/detail_screen.dart';
import 'package:flutter_e_book_app/screen/model/book.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'book_item.dart';

class BookStaggeresGridView extends StatelessWidget {
  final PageController pageController;
  final Function press;
  final int selected;
  BookStaggeresGridView({this.pageController, this.press, this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 15.0, top: 20.0),
      child: PageView(
        onPageChanged: (index) => press(index),
        controller: pageController,
        children: [
          StaggeredGridView.countBuilder(
              itemCount: books.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailSceen(
                                    book: books[index],
                                  )));
                    },
                    child: BookItem(
                      book: books[index],
                    ),
                  ),
              staggeredTileBuilder: (_) => const StaggeredTile.fit(2)),
          Text("duong")
        ],
      ),
    );
  }
}
