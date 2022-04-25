// ignore_for_file: file_names, unused_import, camel_case_types, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:application/widget/smallText.dart';
import 'package:flutter/material.dart';

class upper_body extends StatefulWidget {
  const upper_body({Key? key}) : super(key: key);

  @override
  _upper_bodyState createState() => _upper_bodyState();
}

class _upper_bodyState extends State<upper_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context,pos){
      return buildPage(pos);
    }));
  }
  Widget buildPage(int index){
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: Colors.amber,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.amber)),
      ),
    );
  }
}

