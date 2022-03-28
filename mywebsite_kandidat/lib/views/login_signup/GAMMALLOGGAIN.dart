import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/HANNES_HEATMAP.dart';
import 'package:mywebsite_kandidat/widgets/login_button/login_button.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';
import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';
import '../Players/players_view.dart';

var mailMessages = [
  'Ange mailadress',
  'Fel mailadress/lösenord',
];

var losenMessages = [
  'Ange lösenord',
  'Fel mailadress/lösenord',
];

var mailadresser = [
  'kandidat',
];

var losenord = [
  'kandidat',
];

bool mailValue = false;
bool losenValue = false;

var textValues = [
  mailValue,
  losenValue,
];


class LogInView extends StatefulWidget {

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
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 300,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('LOGGA IN',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: myControllerMail,
                          decoration: const InputDecoration(
                            hintText: 'Ange mailadress',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          obscureText: _isObscure,
                          controller: myControllerPassword,
                          decoration: InputDecoration(
                              hintText: 'Ange lösenord',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscure ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  })),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 31, 229, 146), // background
                            onPrimary: const Color.fromARGB(255, 31, 229, 146), // foreground
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'LOGGA IN',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                (myControllerMail.text == 'kandidat' && myControllerPassword.text == 'kandidat')
                                ? const HannesHeatmap()
                                : LogInView()
                                ),
                              );
                            },
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text('ELLER',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 300,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('SKAPA ETT KONTO',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 275,
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
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                              hintText: 'Ange lösenord',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscure ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  })),
                      ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 31, 229, 146),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const LoginButton('SKAPA KONTO', PlayersRoute),
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



