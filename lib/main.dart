// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_string_interpolations, unused_import
import 'package:application/page.dart';
import 'package:application/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(routes: {
    "login": (context) => Login(),
    "reset password": (context) => ResetPassword(),
    "Page": (context) => PageK(),
    },
      theme: ThemeData(), home: Login()));
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
