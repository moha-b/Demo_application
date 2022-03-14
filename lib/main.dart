// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  List image =
  [
    "images/cheese.png",
    "images/doctors.png",
    "images/jumper.png",
    "images/processor.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   actions: [IconButton(onPressed:(){}, icon: Icon(Icons.shopping_cart),color: Colors.black,)],
        //   leading: CircleAvatar(radius: 25,),
        //   title: ListTile(
        //     title:Text("Mohab", style: TextStyle(color: Colors.black),),
        //     subtitle: Text("Mohabzax@gamil.com"),),),
        drawer: Drawer(),
        body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(color: Colors.white,
                        boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.5), spreadRadius: 5,
                            offset: Offset(0,3),blurRadius: 7),],borderRadius: BorderRadius.circular(50)),
                    margin: EdgeInsets.all(20),
                    child: ListTile(
                        leading: CircleAvatar(radius: 30,),
                        title: Text("Mohab", style: TextStyle(fontSize: 22,),),
                        subtitle: Text("Mohabzax4@gmail.com"),
                        trailing: IconButton(onPressed: () {},icon: Icon(Icons.shopping_cart,size: 27,color: Color(0xFFBE11AD),),)
                    )),
                Container(
                  // margin: EdgeInsets.all(20),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),],
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
