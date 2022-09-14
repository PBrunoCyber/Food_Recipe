import 'package:flutter/material.dart';

class Recipe {
  String image;
  String name;
  String description;
  double rating;
  String totalTime;
  Recipe(
      {@required this.image,
      @required this.description,
      @required this.rating,
      @required this.totalTime,
      @required this.name});

  @override
  String toString() {
    return 'Recipe {  name: $name, rating: $rating, totalTime: $totalTime, description: $description';
  }
}
