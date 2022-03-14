// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Wrap(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 230,
                    color: Color(0xFFC988EB),
                  ),
                  // Divider(),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Log In ",
                        style: TextStyle(
                            color: Color(0xFFC988EB),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )),
                  // Username
                  Container(
                    //Username
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: Color(0xFFC988EB),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFC988EB), width: 4)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFC988EB))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC988EB)),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xFFC988EB),
                          )),
                    ),
                  ),
                  Divider(),
                  // password
                  Container(
                    // password
                    margin: EdgeInsets.only(bottom: 9),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Color(0xFFC988EB),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xFFC988EB),
                          )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC988EB),
                              ),
                              borderRadius: BorderRadius.circular(28)),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Color(0xFFC988EB),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xFFC988EB),
                          )),
                      obscureText: true, // keyboardType: TextInputType.number,
                    ),
                  ),
                  // Forgot Password & Sign in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  color: Color(0xFFC988EB),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Sign in ?",
                              style: TextStyle(
                                  color: Color(0xFFC988EB),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                        onTap: () {},
                      )
                    ],
                  ),
                  SizedBox(height: 210),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFC988EB),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
