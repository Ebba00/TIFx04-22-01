
import 'package:flutter/material.dart';

class FieldArea2 extends StatelessWidget {
  const FieldArea2({Key? key, required this.fieldColor}) : super(key: key);

  final Color fieldColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15,
        width: 15,
        color: fieldColor,
      );
  }
}