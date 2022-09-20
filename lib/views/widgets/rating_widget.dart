import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  final Function(int) onSelectedRating;
  // ignore: use_key_in_widget_constructors
  const RatingWidget(this.onSelectedRating);
  @override
  createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int currentStarId = 0;

  Widget _generatedStar(int index) {
    if (index < currentStarId) {
      return const Icon(Icons.star, color: Colors.orange);
    } else {
      return const Icon(Icons.star_border_outlined);
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(5, (index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentStarId = index + 1;
          });
          widget.onSelectedRating(currentStarId);
        },
        child: _generatedStar(index),
      );
    });
    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
