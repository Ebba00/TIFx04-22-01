
import 'package:flutter/material.dart';

class FieldAreaTL extends StatelessWidget {
  const FieldAreaTL({Key? key, required this.fieldColor}) : super(key: key);

  final Color fieldColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 30,
      color: fieldColor,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10)
        ),
      ),
    );
  }
}