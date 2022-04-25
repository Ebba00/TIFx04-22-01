import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'login_navbar_item.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';

class NavigationBarTabletDesktopLOGIN extends StatelessWidget {
  const NavigationBarTabletDesktopLOGIN({Key? key}) : super(key: key);

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
              NavBarItem('BALLE', EpisodesRoute), // Balle?
              SizedBox(
                width: 60,
              ),
              NavBarItem('Om oss', AboutRoute),
              SizedBox(
                width:60,
              ),
              LoginNavBarItem('Logga in', LoginRoute),
            ],
          )
        ],
      ),
    );
  }
}