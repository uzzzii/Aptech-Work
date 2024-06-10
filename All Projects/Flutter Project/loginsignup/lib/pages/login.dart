import 'package:loginsignup/Components/my_button.dart';
import 'package:loginsignup/Components/my_textfield.dart';
import 'package:loginsignup/auth/authServices.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  final TextEditingController emailcontrolller = TextEditingController();
  final TextEditingController passscontrolller = TextEditingController();
  final void Function()? ontap;
  login({super.key, required this.ontap});

  void Login(BuildContext context) async {
    final authService = AuthService();

    //try login
    try {
      await authService.signInWithEmailAndPassword(
          emailcontrolller.text, passscontrolller.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_3_rounded,
            size: 60,
            color: Colors.black87,
          ),

          SizedBox(height: 20),
          Text(
            "Welcome To My Application",
            style: TextStyle(color: Colors.black87),
          ),

          //email textfield
          SizedBox(height: 20),
          Mytextfiled(
            hintText: "Enter Your Email",
            obscuretext: false,
            textController: emailcontrolller,
          ),

          //password textfield
          SizedBox(height: 20),
          Mytextfiled(
            hintText: "Enter Your Password",
            obscuretext: true,
            textController: passscontrolller,
          ),

          //login button
          SizedBox(
            height: 20,
          ),
          Mybutton(text: "Login", ontap: () => Login(context)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not Registered ? ",
                style: TextStyle(color: Colors.grey[700]),
              ),
              GestureDetector(
                onTap: ontap,
                child: Text(
                  "Registered Now",
                  style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
