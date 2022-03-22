import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';

import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            NavBarItem('Spelare', PlayersRoute),
          ],

        );
  }
}