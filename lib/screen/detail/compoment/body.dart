import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/detail/compoment/build_header.dart';
import 'package:flutter_e_book_app/screen/detail/compoment/build_image.dart';
import 'package:flutter_e_book_app/screen/model/book.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';
import 'package:readmore/readmore.dart';

class Body extends StatelessWidget {
  final Book book;
  Body({this.book});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BuildHeader(book: book),
          BuildImage(book: book),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      book.rating.toString(),
                      style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RatingBar(
                      rating: book.rating,
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.grey,
                      ),
                      starCount: 5,
                      spacing: 2.0,
                      size: 15,
                      isIndicator: false,
                      allowHalfRating: true,
                      onRatingCallback:
                          (double value, ValueNotifier<bool> isIndicator) {
                        print('Number of stars-->  $value');
                        //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                        isIndicator.value = true;
                      },
                      color: Colors.amber,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${book.score} Rating on Google Play",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReadMoreText(
                  book.review,
                  style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 15.0,
                      height: 1.5,
                      fontWeight: FontWeight.w600),
                  trimLines: 5,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: ' Less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
