import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectOption;
  final String options;

  Answer({this.selectOption, this.options});

  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Container(
          width: double.infinity,
          child: RaisedButton(
            child: Text(
              options,
              style: TextStyle(fontSize: 18),
            ),
            color: Colors.blue,
            onPressed: selectOption,
          )),
    );
  }
}
