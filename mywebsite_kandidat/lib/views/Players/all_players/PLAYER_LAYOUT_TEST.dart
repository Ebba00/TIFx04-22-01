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

var hannesSpeed = [10,11,12];
var hannesAcc = [20,21,22];
var hannesDistance = [30,31,32];

var hannesXCoordinates = [14, 53, 53, 23, 89, 390,239, 310];
var hannesYCoordinates = [80, 123, 153, 3, 189, 90,139, 110];


class PlayerLayoutView extends StatefulWidget {
  const PlayerLayoutView({Key? key}) : super(key: key);


  @override
  State createState() => LogInViewState(); }

class LogInViewState extends State {

  String selectedGame = games[0];
  bool statsHeatmap = true;
  Color statsColor = Colors.black;
  Color heatColor = Colors.black54;
  var boxHeight1 = 120;
  var boxHeightGap = 40;

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
                              //locator<NavigationService>().navigateTo(HannesGRoute);
                              statsHeatmap = true;
                              statsColor = Colors.black;
                              heatColor = Colors.black54;
                              boxHeight1 = 120;
                              boxHeightGap = 40;
                              },

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
                                child: Align(
                                  alignment: Alignment.center,
                                  child:
                                    Text('STATISTIK',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: statsColor,
                                      ),
                                    ),
                                ),
                              ),
                          ),
                          GestureDetector(
                            onTap: () {
                              //locator<NavigationService>().navigateTo(HannesGRoute);
                              statsHeatmap = false;
                              statsColor = Colors.black54;
                              heatColor = Colors.black;
                              boxHeight1 = 154;
                              boxHeightGap = 20;
                              },
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
                              child: Align(
                                alignment: Alignment.center,
                                child:
                                Text('HEATMAP',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: heatColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: boxHeightGap as double,
                        width: 30,
                      ),
                      SizedBox(
                        width: 410,
                        height: boxHeight1 as double,
                        child: statsHeatmap == true
    ?
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('UPPMÄTT MAXHASTIGHET:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('${hannesSpeed[games.indexOf(selectedGame)]}    [m/s]',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('MAXIMALT UPPMÄTT\n ACCELERATION:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('${hannesAcc[games.indexOf(selectedGame)]}    [m/s^2]',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('FÄRDAD DISTANS:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text('${hannesDistance[games.indexOf(selectedGame)]}    [km]',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                        : HannesHeatmap(coordinatesY2: hannesYCoordinates, coordinatesX1: hannesXCoordinates,),
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



