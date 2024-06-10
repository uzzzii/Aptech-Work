import 'package:authentication/auth/authServices.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
  void signout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KHUSAMDEED"),
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),
    );
  }
}
