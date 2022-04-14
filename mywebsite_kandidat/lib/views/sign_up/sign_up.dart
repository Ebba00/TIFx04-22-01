import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/HANNES_HEATMAP.dart';
import 'package:mywebsite_kandidat/widgets/login_button/login_button.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';
import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';
import '../Players/players_view.dart';


class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);


  @override
  State createState() => LogInViewState(); }

class LogInViewState extends State {
  bool _isObscure = true;
  final myControllerMail = TextEditingController();
  final myControllerPassword = TextEditingController();

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
                    children: <Widget> [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('KONTAKTA OSS',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 355,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Ange mailadress',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 355,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          maxLines: 10,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              hintText: 'Vad har du på hjärtat...',
                              border: OutlineInputBorder(),
                        ),
                      ),),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 31, 229, 146),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const LoginButton('Skicka', PlayersRoute),
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



