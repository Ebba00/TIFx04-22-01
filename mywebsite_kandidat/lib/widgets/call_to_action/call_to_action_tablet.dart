import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/constants/app_colors.dart';

import '../../locator.dart';
import '../../services/navigation_service.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  final String navigationPath;
  const CallToActionTabletDesktop({Key? key, required this.title, required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child:
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),

        ),
    );
  }
}