// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_string_interpolations
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageState();
  }
}

class PageState extends State<page> {

  BoxShadow them = BoxShadow(
  color: Colors.grey.withOpacity(.5),
  offset: Offset(0,3),
  blurRadius: 6,
  spreadRadius: 5,
  );
  BoxDecoration decoration = BoxDecoration(borderRadius: BorderRadius.circular(36),color: Color(0xFFFEF7FF),boxShadow: [BoxShadow(
    color: Colors.grey.withOpacity(.5),
    offset: Offset(0,3),
    blurRadius: 6,
    spreadRadius: 5,)]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Container(
              color: Color(0xFF02020A),
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xFFFEF7FF),
                        boxShadow: [them]
                      ),
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("Mohab"),
                        subtitle: Text("MohabZax4@gmail.com"),
                        trailing: IconButton(
                          icon: Icon(Icons.ac_unit,color: Color(0xFFC988EB),),onPressed: () {},),),
                    ),
                    SizedBox(height: 10,),
                    TabBar(
                        indicatorColor: Color(0xFFC988EB),
                        tabs: [
                      Tab(icon: Icon(Icons.keyboard_alt,color: Color(0xFFC988EB),),),
                      Tab(icon: Icon(Icons.contact_page,color: Color(0xFFC988EB),),),
                      Tab(icon: Icon(Icons.fingerprint_sharp,color: Color(0xFFC988EB),),),
                      Tab(icon: Icon(Icons.map,color: Color(0xFFC988EB),),),
                    ]),
                    SizedBox(
                      height: 500,
                      child: TabBarView(
                        children: [
                          Container(child: GridView.count(
                            crossAxisCount: 2,crossAxisSpacing: 40,
                            children: [
                            Container(
                              decoration: decoration,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.accessibility_outlined,size: 90,),
                                  Text("Pc Component",),
                              ],
                            ),
                            ),
                            Container(
                                decoration: decoration,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.accessibility_outlined,size: 90,),
                                    Text("Pc Component",),
                                  ],
                                ),
                              )],),),
                          Container(child: Text("Text2"),),
                          Container(child: Text("Text3"),),
                          Container(child: Text("Text4"),),
                        ],),
                      ),
                    ],
                ),
              ),
            ),),)
    );
  }
}