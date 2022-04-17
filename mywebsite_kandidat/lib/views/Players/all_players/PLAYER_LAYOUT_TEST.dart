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

var hannesSpeed = [10, 11, 12];
var hannesAcc = [20, 21, 22];
var hannesDistance = [30, 31, 32];

var hannesXCoordinatesGame1 = [14, 53, 53, 23, 89, 390, 239, 310];
var hannesYCoordinatesGame1 = [80, 123, 153, 3, 189, 90, 139, 110];

var hannesXCoordinatesGame2 = [];
var hannesYCoordinatesGame2 = [];

var hannesXCoordinatesGame3 = [114, 153, 153, 223, 289, 90, 39, 210];
var hannesYCoordinatesGame3 = [180, 12, 53, 39, 19, 190, 39, 10];

var hannesXCoordinates = [hannesXCoordinatesGame1, hannesXCoordinatesGame2, hannesXCoordinatesGame3];
var hannesYCoordinates = [hannesYCoordinatesGame1, hannesYCoordinatesGame2, hannesYCoordinatesGame3];

class PlayerLayoutView extends StatefulWidget {
  const PlayerLayoutView({Key? key}) : super(key: key);

  @override
  State createState() => LogInViewState();
}

class LogInViewState extends State<PlayerLayoutView>
    with SingleTickerProviderStateMixin {
  String selectedGame = games[0];
  bool statsHeatmap = true;
  Color statsColor = Colors.black;
  Color heatColor = Colors.black54;
  var boxHeight1 = 120;
  var boxHeightGap = 40;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
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
                    children: <Widget>[
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
                                Text(
                                  'NAMN:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  'Hannes Gustafsson',
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
                                Text(
                                  'POSITION:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  'Center',
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
                                Text(
                                  'NUMMER:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '26',
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
                                Text(
                                  'FÖDELSEÅR:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '2000',
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
                      children: [
                        TabBar(
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Open Sans',
                          ),
                          indicatorColor: Colors.transparent,
                          unselectedLabelColor: Colors.black54,
                          labelColor: Colors.black,
                          tabs: const [
                            Tab(
                              text: 'STATISTIK',
                            ),
                            Tab(text: 'HEATMAP')
                          ],
                          controller: _tabController,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 410,
                                  height: 120,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'UPPMÄTT MAXHASTIGHET:',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            '${hannesSpeed[games.indexOf(selectedGame)]}    [m/s]',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'MAXIMALT UPPMÄTT\n ACCELERATION:',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            '${hannesAcc[games.indexOf(selectedGame)]}    [m/s^2]',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'FÄRDAD DISTANS:',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            '${hannesDistance[games.indexOf(selectedGame)]}    [km]',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: SizedBox(
                                  width: 410,
                                  height: 154,
                                  child: HannesHeatmap(
                                    coordinatesY2: hannesYCoordinates[games.indexOf(selectedGame)],
                                    coordinatesX1: hannesXCoordinates[games.indexOf(selectedGame)],
                                  ),
                                ),
                              ),
                            ],
                            controller: _tabController,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
