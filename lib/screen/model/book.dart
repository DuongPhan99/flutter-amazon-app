import 'package:flutter/material.dart';

class Book {
  final String type, name, imageUrl, puslish, review;
  final double rating, height;
  final int score;
  Book(
      {this.imageUrl,
      this.name,
      this.puslish,
      this.rating,
      this.review,
      this.score,
      this.type,
      this.height});
}

List<Book> books = [
  Book(
      imageUrl: "assets/images/book1.jpeg",
      type: 'Hostory',
      name: "This is the way",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 4.0,
      score: 892,
      height: 220.0),
  Book(
      imageUrl: "assets/images/book2.jpeg",
      type: 'Hostory',
      name: "Alway forgive your enemies, nothing ennoyes.",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 3.0,
      score: 892,
      height: 240.0),
  Book(
      imageUrl: "assets/images/book3.jpeg",
      type: 'Hostory',
      name: "This is the way",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 5.0,
      score: 892,
      height: 200.0),
  Book(
      imageUrl: "assets/images/book4.jpeg",
      type: 'Hostory',
      name: "Alway forgive your enemies, nothing ennoyes.",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 2.0,
      score: 892,
      height: 220.0),
  Book(
      imageUrl: "assets/images/book5.jpeg",
      type: 'Hostory',
      name: "this is the way",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 4.0,
      score: 892,
      height: 220.0),
  Book(
      imageUrl: "assets/images/book6.jpeg",
      type: 'Hostory',
      name: "Alway forgive your enemies, nothing ennoyes.",
      puslish: "istudio",
      review:
          "I failed the first quarter of a class is school, so i made a fake report card. I did this every quarter that year. I forgot that the mail home the end year card, anh my mom got it before i could intercept when i now play tenis.",
      rating: 5.0,
      score: 892,
      height: 180.0)
];
