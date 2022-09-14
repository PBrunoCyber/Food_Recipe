import 'package:flutter/material.dart';

class Recipe {
  String name;
  String image;
  double rating;
  String totalTime;
  String description;

  Recipe({
    @required this.name,
    @required this.image,
    @required this.rating,
    @required this.totalTime,
    @required this.description,
  });
}
