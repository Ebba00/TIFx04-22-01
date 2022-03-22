import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/constants/app_colors.dart';

import '../../locator.dart';
import '../../services/navigation_service.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  final String navigationPath;
  const CallToActionMobile({Key? key, required this.title, required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child:
        Container(
          height: 60,
          alignment: Alignment.center,
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