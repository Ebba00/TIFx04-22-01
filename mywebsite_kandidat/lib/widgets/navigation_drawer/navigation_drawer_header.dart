import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text('Valfri text',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),),
          Text('Valfri text',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}