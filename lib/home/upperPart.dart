// ignore_for_file: file_names, unused_import, camel_case_types, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace
import 'package:application/home/homePage.dart';
import 'package:application/widget/bigText.dart';
import 'package:application/widget/iconTextWidget.dart';
import 'package:application/widget/smallText.dart';
import 'package:flutter/material.dart';

class upper_body extends StatefulWidget {
  const upper_body({Key? key}) : super(key: key);

  @override
  _upper_bodyState createState() => _upper_bodyState();
}

class _upper_bodyState extends State<upper_body> {
  PageController pageController = PageController(viewportFraction: .86);
  var pageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, pos) {
              return buildPage(pos);
            }));
  }

  Widget buildPage(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.amberAccent,
              image: DecorationImage(
                  image: AssetImage("images/TokyoGhoul .jpg"),
                  fit: BoxFit.cover)),
        ),
        Align(
            child: Container(
          padding: EdgeInsets.only(top: 12, left: 15, right: 15),
          height: 120,
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 15, top: 140),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 1,
                    color: grey.withOpacity(0.3)),
                BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                BoxShadow(color: Colors.white, offset: Offset(5, 0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "This is a pathetic design"),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star_rounded,
                              color: cyan,
                              size: 15,
                            )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SmallText(text: "4.5"),
                  SizedBox(
                    width: 10,
                  ),
                  SmallText(text: "1742"),
                  SizedBox(
                    width: 10,
                  ),
                  SmallText(text: "comments")
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconTextWidget(
                      icon: Icons.circle_sharp,
                      text: "Normal",
                      iconColor: Colors.amber),
                  IconTextWidget(
                      icon: Icons.location_on, text: "1.7km", iconColor: cyan),
                  IconTextWidget(
                      icon: Icons.access_time,
                      text: "1.7km",
                      iconColor: Colors.deepOrange)
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }
}
