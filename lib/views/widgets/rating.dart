import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maximunRating;
  final Function(int) onRatingSelected;
  // ignore: use_key_in_widget_constructors
  const Rating(this.onRatingSelected, [this.maximunRating = 5]);
  @override
  createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _currentRating = 0;
  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return const Icon(Icons.star, color: Colors.orange);
    } else {
      return const Icon(Icons.star_border_outlined);
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(widget.maximunRating, (index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });
          widget.onRatingSelected(_currentRating);
        },
        child: _buildRatingStar(index),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: stars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
