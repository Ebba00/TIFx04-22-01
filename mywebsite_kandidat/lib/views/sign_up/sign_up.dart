import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/login_button/login_button.dart';
import '../../routing/route_names.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
                      Text('Skapa ditt konto och kom igång',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, height: 1.15, fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                  ),
                  SizedBox(height: 30,),
                  Text('Genom att skapa ett konto hos INDICATE kan du få en överblick över dina'
                      ' lag och individuell data för varje spelare. Du som tränare kommer kunna'
                      ' se matcher ditt lag spelat, bläddra mellan dem och se data för varje'
                      ' enskild match. Med hjälp av INDICATE kan du utveckla ditt lag och få en'
                      ' överblick över varje spelares utvecklingsområde respektive talanger.',
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
                      const Text('Kom igång',
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
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          maxLines: 10,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              hintText: 'Innebandyklubb',
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
                        child: const LoginButton('Skicka', SignUpMessageRoute),
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



