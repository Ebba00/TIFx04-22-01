import 'package:flutter/material.dart';

class HannesGView extends StatelessWidget {
  const HannesGView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}