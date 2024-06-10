import 'package:authentication/auth/authServices.dart';
import 'package:flutter/material.dart';

class Newregister extends StatelessWidget {
  const Newregister({super.key});
  void signout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ap Register Hogy Heen"),
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),
    );
  }
}
