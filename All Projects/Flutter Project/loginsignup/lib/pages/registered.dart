import 'package:loginsignup/Components/my_button.dart';
import 'package:loginsignup/Components/my_textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final TextEditingController emailcontrolller = TextEditingController();
  final TextEditingController passscontrolller = TextEditingController();
  final TextEditingController confirmpasscontrolller = TextEditingController();

  final void Function()? ontap;

  Register({super.key, required this.ontap});

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

          //Confirm password textfield
          SizedBox(height: 20),
          Mytextfiled(
            hintText: "Confirm Password",
            obscuretext: true,
            textController: confirmpasscontrolller,
          ),

          //login button
          SizedBox(
            height: 20,
          ),
          Mybutton(text: "Login", ontap: () {}),

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
                  "Login Now",
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
