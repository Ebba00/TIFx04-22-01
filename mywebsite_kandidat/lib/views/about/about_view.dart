import 'package:flutter/material.dart';

import '../../VARIABLES.dart';

class AboutView extends StatelessWidget {
   const AboutView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
          width: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget> [
                    Text('VAD ÄR INDICATE?',
                        style: TextStyle(
                        fontWeight: FontWeight.w800, height: 1.15, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30,),

                    Text('Välkommen till innebandytränarens'
                        ' bästa vän och ett effektivt verktyg för att analysera spelarprestationer.'
                        ' Skapa en profil och lägg till spelare eller läs mer om INDICATE och vad vi erbjuder.',
                      style: TextStyle(
                          fontSize: 15, height: 1.7),
                      textAlign: TextAlign.center,
                    ),
                  ],
              ),
            ),
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget> [
                  Text('VAD ÄR INDICATE?',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, height: 1.15, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),

                  Text('Välkommen till innebandytränarens'
                      ' bästa vän och ett effektivt verktyg för att analysera spelarprestationer.'
                      ' Skapa en profil och lägg till spelare eller läs mer om INDICATE och vad vi erbjuder.',
                    style: TextStyle(
                        fontSize: 15, height: 1.7),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}