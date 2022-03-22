import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/call_to_action/call_to_action.dart';
import 'package:mywebsite_kandidat/widgets/centered_view/centered_view.dart';
import 'package:mywebsite_kandidat/widgets/course_details/course_details.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navigation_bar.dart' as auth;

import '../../routing/route_names.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  const <Widget>[
        CourseDetails(),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: CallToAction(title: 'LOGGA IN',)
            ,)
          ,)
      ],
    );
  }
}