import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/home/home_content_mobile.dart';
import 'package:mywebsite_kandidat/views/home/home_content_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_content_desktop.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        desktop: 850,
        tablet: 850,
        watch: 600,
      ),
      desktop: const HomeContentDesktop(),
      watch: const HomeContentMobile(),
      tablet: const HomeContentTablet(),
      mobile: const HomeContentMobile(),
    );
  }
}