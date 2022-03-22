import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(HomeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem('Exempel', EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Om oss', AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}