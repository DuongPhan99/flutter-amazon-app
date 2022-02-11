import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/model/book.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 20.0),
      height: 200.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
              child: Image.asset(
                book.imageUrl,
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 5.0,
            bottom: 10.0,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 35.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.purple[900],
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Audio Book",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
