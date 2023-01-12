import 'package:first_flutter/auth/login.dart';
import 'package:first_flutter/auth/signup.dart';
import 'package:first_flutter/cred/addnotes.dart';
import 'package:first_flutter/home/homePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        theme: ThemeData(
            primaryColor: Colors.red,
            buttonColor: Colors.red,
            textTheme: TextTheme(
                headline6: TextStyle(fontSize: 20, color: Colors.white))),
        routes: {
          "login": (context) => Login(),
          "signup": (context) => SignUp(),
          "homePage": (context) => HomePage(),
          "addNote": (context) => AddNotes()
        });
  }
}
