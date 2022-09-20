import 'package:flutter/material.dart';

List<String> generatedListDropdown(int lenght) {
  return List<String>.generate(lenght, (index) {
    if (index == 0) {
      return "";
    }
    return "$index";
  });
}

class DropDownWidget extends StatefulWidget {
  final int lenght;
  final String label;
  final Function(String) onChangedTime;
  // ignore: use_key_in_widget_constructors
  const DropDownWidget(this.lenght, this.label, this.onChangedTime);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget.label),
        DropdownButton<String>(
          value: time,
          onChanged: (String value) {
            setState(() {
              time = value;
              widget.onChangedTime(value);
            });
          },
          items: generatedListDropdown(widget.lenght)
              .map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem(value: value, child: Text(value));
            },
          ).toList(),
        )
      ],
    );
  }
}
