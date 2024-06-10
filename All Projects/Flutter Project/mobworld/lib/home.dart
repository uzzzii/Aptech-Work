import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("Welcome to Mobile World"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Text("IPhone"),
              color: Colors.lime[300],
              padding: EdgeInsets.all(25),
            ),
          ),
          Expanded(
            child: Container(
              child: Text("Samsung"),
              color: Color.fromARGB(255, 161, 243, 140),
              padding: EdgeInsets.all(25),
            ),
          ),
        ],
      ),
    );
  }
}
