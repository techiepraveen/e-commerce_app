import 'package:flutter/material.dart';

class Productclass {
  final String imgurl;
  final String name;
  final String price;
  final String title;
  final String desc;

  Productclass({
    @required this.imgurl,
    @required this.name,
    @required this.price,
    @required this.title,
    @required this.desc
  });
}
