// ignore_for_file: file_names, unused_import, camel_case_types, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:application/home/upperPart.dart';
import 'package:application/widget/bigText.dart';
import 'package:application/widget/smallText.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// Color Section
Color cyan = Color(0xFF80d4cb);
Color grey = Colors.grey;

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Egypt",
                        color: cyan,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Cairo",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  // search icon
                  Container(
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: cyan)),
                      color: cyan,
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.search_off_outlined,
                            color: Colors.white,
                            //  size: 10,
                          )),
                    ),
                  )
                ],
              )),
          upper_body(),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BigText(text: "Popular"),
                SizedBox(
                  width: 10,
                ),
                SmallText(text: "."),
                SizedBox(
                  width: 10,
                ),
                SmallText(text: "Food pairing")
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
