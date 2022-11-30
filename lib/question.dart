// "st" vscode shortcut to create widgets

import 'package:flutter/material.dart'; // Always import the package

class Question extends StatelessWidget {
  // can remove the code below
  // const MyWidget({Key key}) : super(key: key);

  final String questionText = "";

  Question(String questionText) {
    questionText = questionText;
  }

  // Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
