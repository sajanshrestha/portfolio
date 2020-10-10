import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Navbar(),
            Expanded(
              child: IntroView(),
            ),
          ],
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Sajan Shrestha',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        Text(
          'Mentorship',
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.green[400]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactForm()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Say Hello',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class IntroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'iOS and Flutter Engineer',
          style: TextStyle(
            fontSize: 38,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'I design and code beautifully simple things, and I love what I do.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Contact form',
      ),
    ));
  }
}
