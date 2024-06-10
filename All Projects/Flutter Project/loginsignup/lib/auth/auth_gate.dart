import 'package:loginsignup/auth/login_register.dart';
import 'package:loginsignup/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is login

          if (snapshot.hasData) {
            return const homepage();
          } else {
            return const loginregisters();
          }
        },
      ),
    );
  }
}
