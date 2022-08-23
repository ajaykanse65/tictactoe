import 'package:flutter/material.dart';
import 'package:juugad/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;

  final String text;
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        border: Border(),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            spreadRadius: 0,
            blurRadius: 5,
          )
        ]
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width,
            50,
          ),
        ),
        child: Text(text,style: const TextStyle(fontSize: 20,),),
      ),
    );
  }
}
