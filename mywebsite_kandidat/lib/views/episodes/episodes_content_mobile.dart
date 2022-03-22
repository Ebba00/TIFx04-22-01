import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/call_to_action/call_to_action.dart';
import 'package:mywebsite_kandidat/widgets/course_details/course_details.dart';

import '../../routing/route_names.dart';

class EpisodesContentMobile extends StatelessWidget {
  const EpisodesContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction(title: 'LOGGA IN',)
      ],
    );
  }
}