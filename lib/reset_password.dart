// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ResetState();
  }
}

class ResetState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Wrap(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                    Icons.lock_open,
                    color: Color(0xFFC988EB),
                    size: 250,
                  ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Reset Password",
                          labelStyle: TextStyle(color: Color(0xFFC988EB)),
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                          color: Color(0xFFC988EB),
                          )),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC988EB),
                        ),
                          borderRadius: BorderRadius.circular(25),
                      )),
                ),
              )
            ],
          ),
        )
      ],
    )));
  }
}
