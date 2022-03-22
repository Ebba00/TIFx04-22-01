import 'package:flutter/material.dart';
import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';

class StatsView extends StatelessWidget {
  const StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Container(
            height: 300,
            width: 580,
            decoration: BoxDecoration(color: Colors.grey[100],),
            child: Image.asset('FloorballField.png'),
          ),
        ],
      );
  }
}