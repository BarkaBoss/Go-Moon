

import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget{
  List<String> values;
  double width;

  CustomDropDownButton({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10.0)),
      child: DropdownButton(
        value: values.first,
        underline: Container(),
        onChanged: (_) {},
        items: values.map(
              (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}