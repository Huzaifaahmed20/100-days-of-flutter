import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final Widget label;
  final List<DropdownMenuItem<String>> options;
  final Function handleChange;

  CustomDropDown({this.label, this.options, this.handleChange});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        underline: Container(
          height: 2,
          color: Color(0xff06A88E),
        ),
        isExpanded: true,
        iconEnabledColor: Color(0xFFc4c4c4),
        icon: Icon(Icons.arrow_drop_down),
        hint: label,
        items: options,
        onChanged: handleChange);
  }
}
