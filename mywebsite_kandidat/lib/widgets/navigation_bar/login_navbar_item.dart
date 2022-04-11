import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/constants/app_colors.dart';
import 'package:mywebsite_kandidat/locator.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';

class LoginNavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const LoginNavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Container(
        width: 110,
      height: 50,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child:
          Text(
            title,
            style: const TextStyle(fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,),
          ),
      ),
      )
    );
  }
}