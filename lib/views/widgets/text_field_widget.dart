import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final int maxLines;
  final double height;
  final Function(String) onChanged;
  // ignore: use_key_in_widget_constructors
  const TextFieldWidget(this.labelText, this.hintText, this.controller,
      this.maxLines, this.height, this.onChanged);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(labelText),
        Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(0),
          height: height,
          child: TextField(
            controller: controller,
            maxLines: maxLines,
            onChanged: ((value) {
              onChanged(value);
            }),
            textAlign: TextAlign.justify,
            decoration: InputDecoration(
                hintText: hintText, border: const OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
