import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text('Answer 1'),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
        ));
  }
}
