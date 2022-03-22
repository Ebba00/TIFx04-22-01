import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Colors.grey[100],),
            ),
          ],

        );
  }
}