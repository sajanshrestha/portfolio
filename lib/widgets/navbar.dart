import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skills_page.dart';

import 'about.dart';

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
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => About()));
          },
          child: Text(
            'About',
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SkillsPage()));
          },
          child: Text(
            'Skills',
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Projects',
          ),
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
