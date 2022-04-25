// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({
    Key? key,
    this.color,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
