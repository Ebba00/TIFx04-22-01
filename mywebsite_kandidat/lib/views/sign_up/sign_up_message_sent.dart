import 'package:flutter/material.dart';


class SignUpMessageView extends StatelessWidget {
  const SignUpMessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 45,),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text('VI JOBBAR PÅ DET...',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, height: 1.15, fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('För tillfället kan tyvärr inte nya användare skapa ett konto själva utan'
                      ' behöver kontakta oss på INDICATE så att vi kan sätta upp ett konto åt er.'
                      ' Är ni intresserade och vill ta del av vår tjänst, eller om ni har några som'
                      ' helst frågor, så är det bara att ange en mailadress samt skicka iväg ett meddelande.'
                      ' Vi svarar så fort vi kan och svaret skickas till den angivna mailadressen.',
                    style: TextStyle(fontSize: 15, height: 1.7),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 340,
                  width: 460,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget> [
                      SizedBox(
                        height: 40,
                      ),
                      Text('TACK!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 200,
                        width: 355,
                        child:
                          Text('Stort tack för visat intresse! Vi läser ditt meddelande och svarar'
                              ' så fort vi kan. Om du kommer på något annat under tiden du väntar på svar'
                              ' är det bara att skicka ett nytt meddelande så svarar vi på det med. Vi hörs snart!'
                              ' \n\n Med vänliga hälsningar, \n teamet på INDICATE.',
                            style: TextStyle(fontSize: 15, height: 1.7),
                            textAlign: TextAlign.center,
                          ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ],
    );
  }
}



