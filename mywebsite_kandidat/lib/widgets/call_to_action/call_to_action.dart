import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:mywebsite_kandidat/widgets/call_to_action/call_to_action_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../routing/route_names.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        desktop: 850,
        tablet: 850,
        watch: 600,
      ),
      desktop: const CallToActionTabletDesktop(title: 'Kom igång', navigationPath: EbbaRoute,),
        watch: const CallToActionMobile(title: 'Kom igång', navigationPath: SignUpRoute,),
        tablet: const CallToActionTabletDesktop(title: 'Kom igång', navigationPath: SignUpRoute,),
        mobile: const CallToActionTabletDesktop(title: 'Kom igång', navigationPath: SignUpRoute,),
    );
  }
}

