import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class SubtitleText extends StatelessWidget {
  final String subtitle;
  final bool visible;

  SubtitleText({this.subtitle, this.visible});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: Duration(
          seconds: 1,
        ),
        child: Text(
          subtitle,
          style: subtitleTextStyle,
        ));
  }
}
