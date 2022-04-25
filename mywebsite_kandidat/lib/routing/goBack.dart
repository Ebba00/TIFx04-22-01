import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondNoRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        child: const Text(
          'Second Page',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}