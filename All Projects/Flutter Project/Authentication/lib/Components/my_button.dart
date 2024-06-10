import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  const Mybutton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: Text(text)),
      ),
    );
  }
}
