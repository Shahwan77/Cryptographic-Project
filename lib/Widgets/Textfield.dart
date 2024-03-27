import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  final InputDecoration? decoration;
   CustomTextFields({super.key, required this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,

    );
  }
}
