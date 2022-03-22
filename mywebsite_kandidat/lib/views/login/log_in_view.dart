import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';
import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

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
                    children: const <Widget> [
                      SizedBox(
                        height: 20,
                      ),
                      Text('LOGGA IN',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                    children: const <Widget> [
                      SizedBox(
                        height: 20,
                      ),
                      Text('SKAPA ETT KONTO',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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

