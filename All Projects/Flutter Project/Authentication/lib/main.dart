// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/download.jfif'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'SourceSans3-VariableFont_wght',
              ),
            ),
            // SizedBox(
            //   height: 150,
            // ),
            Card(
              elevation: 10,
              color: Colors.white,
              // padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
              // ignore: prefer_const_literals_to_create_immutables
              child: ListTile(
                // ignore: prefer_const_literals_to_create_immutables
                
                leading:   Icon(
                    Icons.message,
                    color: Colors.teal,
                  ),
              
                title:   Text(
                    'FARZAN AHMED',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                       ),
                  ),
              ),
            ),
            SizedBox(
              child: Divider(color: Colors.teal.shade900,),
           width: 150,
            ),
              Card(
                elevation: 4,
              color: Colors.white,
              // padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
              // ignore: prefer_const_literals_to_create_immutables
              child: ListTile(
                // ignore: prefer_const_literals_to_create_immutables
             
               leading:    Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
               title:    Text(
                    'farzee@gmail.com',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                
              ),
            ),
             SizedBox(
              child: Divider(color: Colors.teal.shade900,),
           width: 150,
            ),
              Card(
                elevation: 4,
              color: Colors.white,
              // padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
              // ignore: prefer_const_literals_to_create_immutables
              child: ListTile(
                // ignore: prefer_const_literals_to_create_immutables
             
               leading:    Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
               title:    Text(
                    '+92546879222',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}