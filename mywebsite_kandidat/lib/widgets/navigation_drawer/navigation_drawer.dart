import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/widgets/navigation_drawer/drawer_item.dart';
import 'package:mywebsite_kandidat/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 16),
      ],
      ),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Exempel', Icons.account_box, EpisodesRoute),
          DrawerItem('Om oss', Icons.help, AboutRoute),
        ],
      ),
    );
  }

}