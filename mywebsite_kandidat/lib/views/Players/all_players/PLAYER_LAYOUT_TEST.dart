import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/HANNES_HEATMAP.dart';
import 'package:mywebsite_kandidat/widgets/login_button/login_button.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';
import '../../../Dropdown/dropdown_PLAYER.dart';
import '../../../Dropdown/dropdown_button_name.dart';
import '../../../locator.dart';
import '../../../routing/route_names.dart';
import '../../../services/navigation_service.dart';
import '../players_view.dart';

var games = [
  'Elfhög (H)',
  'Tranemo (B)',
  'Lockerud (B)',
];


class PlayerLayoutView extends StatefulWidget {
  const PlayerLayoutView({Key? key}) : super(key: key);


  @override
  State createState() => LogInViewState(); }

class LogInViewState extends State {

  String selectedGame = games[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 340,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      const SizedBox(
                        height: 20,
                        width: 30,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'assets/floorball.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                        height: 40,
                      ),
                      SizedBox(
                        width: 280,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('NAMN:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('Hannes Gustafsson',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('POSITION:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('Center',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('NUMMER:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('26',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('FÖDELSEÅR:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('2000',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropDownButtonUsed(
                      items: games,
                      selectedItem: selectedGame,
                      onChange: (String newValue) {
                    setState(() {
                      selectedGame = newValue;
                    });
                  }),
                const SizedBox(
                  height: 40,
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 250,
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              locator<NavigationService>().navigateTo(HannesGRoute);},
                            child:
                              Container(
                                height: 50,
                                width: 250,
                                decoration: const BoxDecoration(
                                  //border: Border.all(
                                    //color: Colors.black,
                                    //width: 1,
                                 // ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child:
                                    Text('STATISTIK',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                ),
                              ),
                          ),
                          GestureDetector(
                            onTap: () {
                              locator<NavigationService>().navigateTo(HannesGRoute);},
                            child:
                            Container(
                              height: 50,
                              width: 250,
                              decoration: const BoxDecoration(
                                //border: Border.all(
                                  //color: Colors.black,
                                  //width: 1,
                                //),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child:
                                Text('HEATMAP',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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



