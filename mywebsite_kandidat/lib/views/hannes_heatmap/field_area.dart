
import 'package:flutter/material.dart';

class FieldArea extends StatelessWidget {
  const FieldArea({Key? key, required this.fieldColor}) : super(key: key);

  final Color fieldColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15,
        width: 30,
        color: fieldColor,
      );
  }
}