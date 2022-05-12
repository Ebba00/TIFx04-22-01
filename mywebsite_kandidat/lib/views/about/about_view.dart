import 'package:flutter/material.dart';


class AboutView extends StatelessWidget {
   const AboutView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
          width: 800,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget> [
                    Text('BAKGRUNDSINFORMATION',
                        style: TextStyle(
                        fontWeight: FontWeight.w800, height: 1.15, fontSize: 28),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 30,),

                    Text('Denna hemsida utgör en del av'
                        ' ett kandidatarbete som bedrivits under våren 2022 på Chalmers tekniska högskola.'
                        ' Arbetet går vid institutionen för fysik och ämnar att skapa ett lättillgängligt'
                        ' positioneringssystem i syfte att utvinna relevant spelarinformation.',
                      style: TextStyle(
                          fontSize: 15, height: 1.7),
                      textAlign: TextAlign.left,
                    ),
                  ],
              ),
            ),
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget> [
                  Text('TEAMET BAKOM INDICATE',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, height: 1.15, fontSize: 28),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30,),

                  Text('Följande är namnen på studenterna som utfört detta '
                      'kandidatarbete samt programmen de tillhör:',
                    style: TextStyle(
                        fontSize: 15, height: 1.7),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 22,),

                  Text('Hannes Gustafsson (M), Pontus Johansson (F), Oskar Kullner (I),'
                  ' Ebba Molinder (D), Victor Salomonsson (TM).',
                    style: TextStyle(
                        fontSize: 15, height: 1.7),
                    textAlign: TextAlign.left,
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