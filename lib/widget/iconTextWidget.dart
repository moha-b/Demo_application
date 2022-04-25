// ignore_for_file: file_names, prefer_const_constructors
import 'package:application/widget/smallText.dart';
import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  final Color iconColor;

  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.color,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          color: color,
        )
      ],
    );
  }
}
