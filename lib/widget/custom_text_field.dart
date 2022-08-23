import 'package:flutter/material.dart';
import 'package:juugad/utils/colors.dart';

class CustomTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextFeild({Key? key, required this.controller, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            spreadRadius: 2,
            blurRadius: 5
          )
        ]
      ),
      child:  TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: bgColor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
