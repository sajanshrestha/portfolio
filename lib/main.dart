import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/subtitle_text.dart';
import 'package:portfolio/widgets/title_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Navbar(),
              BodyView(),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyView extends StatefulWidget {
  @override
  _BodyViewState createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(
            title: 'iOS and Flutter Engineer',
          ),
          SizedBox(height: 10),
          SubtitleText(
            subtitle:
                'I design and code beautifully simple things, and I love what I do.',
            visible: _visible,
          )
        ],
      ),
    );
  }

  bool _visible = false;
}
