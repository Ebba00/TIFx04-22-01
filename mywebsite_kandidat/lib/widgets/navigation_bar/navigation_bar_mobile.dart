import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_logo.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          const NavBarLogo(HomeRoute)
        ],
      ),
    );
  }
}