import 'package:flutter/material.dart';
import '../../routing/route_names.dart';
import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/course_details/course_details.dart';

class HomeContentTablet extends StatelessWidget {
  const HomeContentTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: const <Widget>[
            CourseDetails(),
            Expanded(
              child: Center(
                child: CallToAction(title: 'LOGGA IN',)
                ),
              ),
          ],
        ),
      ],
    );
  }
}