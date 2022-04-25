// ignore_for_file: file_names, must_be_immutable

import 'package:application/home/homePage.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overFlow;
  SmallText({
    Key? key,
    this.color,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(color: grey, fontSize: size, height: height),
    );
  }
}
