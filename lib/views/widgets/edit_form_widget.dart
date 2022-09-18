import 'package:flutter/material.dart';

class FormEdit extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final int maxLines;
  final double heightSizedBox;
  const FormEdit(
      {Key key,
      @required this.controller,
      @required this.label,
      @required this.hintText,
      @required this.maxLines,
      @required this.heightSizedBox})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(label),
        const SizedBox(height: 5),
        SizedBox(
          height: heightSizedBox,
          child: TextField(
            controller: controller,
            style: const TextStyle(fontSize: 15),
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.only(left: 10, top: 25),
              border: const OutlineInputBorder(),
            ),
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}
