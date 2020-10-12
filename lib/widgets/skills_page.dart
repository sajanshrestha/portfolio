import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text('iOS'),
            Container(
              child: Column(
                children: [
                  Text('Swift'),
                  Text('SwifUI'),
                  Text('Core Data'),
                  Text('UIKit'),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Text('Flutter'),
            Container(
              child: Column(
                children: [
                  Text('Dart'),
                  Text('Google Fonts'),
                  Text('Future'),
                  Text('JSON'),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
