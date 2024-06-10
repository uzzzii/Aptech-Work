import 'package:flutter/material.dart';

class Mytextfiled extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final TextEditingController textController;
  const Mytextfiled(
      {required this.hintText,
      required this.obscuretext,
      required this.textController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: obscuretext,
        controller: textController,
        decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.grey[800],
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
