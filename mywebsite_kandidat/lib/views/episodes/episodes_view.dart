import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'episodes_content_desktop.dart';
import 'episodes_content_mobile.dart';
import 'episodes_content_tablet.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        desktop: 850,
        tablet: 850,
        watch: 600,
      ),
      desktop: Parent(),
      watch: const EpisodesContentMobile(),
      tablet: const EpisodesContentTablet(),
      mobile: const EpisodesContentMobile(),
    );
  }
}