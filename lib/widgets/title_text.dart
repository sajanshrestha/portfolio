import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class TitleText extends StatelessWidget {
  final String title;

  TitleText({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title, style: titleTextStyle);
  }
}
