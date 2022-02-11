import 'package:flutter/material.dart';
import 'package:flutter_e_book_app/screen/model/book.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            book.type.toUpperCase(),
            style: TextStyle(color: Colors.redAccent, fontSize: 12.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            book.name,
            style: TextStyle(
                color: Color(0xff594C74),
                fontWeight: FontWeight.bold,
                fontSize: 21.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Pusblish from ",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                TextSpan(
                    text: book.puslish,
                    style: TextStyle(color: Color(0xff594C74)))
              ])),
              Text(
                "23 Mar,2019",
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
