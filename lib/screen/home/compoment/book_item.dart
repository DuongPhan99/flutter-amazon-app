import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/model/book.dart';

class BookItem extends StatelessWidget {
  final Book book;
  BookItem({this.book});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(book.imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16.0)),
    );
  }
}
