import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

          var crossAxis =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center;

          double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 18
              : 30;

          double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 10
              : 15;

          return SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: crossAxis,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('INNEBANDYTRÄNARENS\nBÄSTA VÄN.',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, height: 1.15, fontSize: titleSize),
                  textAlign: textAlignment,
                ),
                const SizedBox(height: 30,),
                Text('Välkommen till innebandytränarens'
                    ' bästa vän och ett effektivt verktyg för att analysera spelarprestationer.'
                    ' Skapa en profil och lägg till spelare eller läs mer om INDICATE och vad vi erbjuder.',
                  style: TextStyle(fontSize: descriptionSize, height: 1.7),
                  textAlign: textAlignment,
                ),
              ],
            ),
          );
        }
    );

  }
}

