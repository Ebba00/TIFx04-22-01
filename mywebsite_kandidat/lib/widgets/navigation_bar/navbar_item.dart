import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/locator.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      locator<NavigationService>().navigateTo(navigationPath);
    },
      child: Text(
      title,
      style: const TextStyle(fontSize: 18),
    ),
    );
  }
}