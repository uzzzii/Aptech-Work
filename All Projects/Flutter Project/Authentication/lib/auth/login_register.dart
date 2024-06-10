import 'package:authentication/pages/login.dart';
import 'package:authentication/pages/registered.dart';
import 'package:flutter/material.dart';

class loginregisters extends StatefulWidget {
  const loginregisters({super.key});

  @override
  State<loginregisters> createState() => _loginregisterState();
}

class _loginregisterState extends State<loginregisters> {
  bool showloginpage = true;
  void togglepages() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return login(ontap: togglepages);
    } else {
      return Register(ontap: togglepages);
    }
  }
}
