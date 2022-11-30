// "st" vscode shortcut to create widgets

import 'package:flutter/material.dart'; // Always import the package

class Question extends StatelessWidget {
  // can remove the code below
  // const MyWidget({Key key}) : super(key: key);

  final String questionText;

  Question(String questionText) : this.questionText = questionText {
    // questionText = questionText;
  }

  // Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
