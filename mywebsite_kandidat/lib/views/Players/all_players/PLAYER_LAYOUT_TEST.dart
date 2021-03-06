import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/Ebba_heatmap/Ebba_display.dart';
import '../../../Dropdown/dropdown_PLAYER.dart';
import '../../../constants/app_colors.dart';
import '../../Players/all_players/playerObject.dart';
import '../../episodes/episodes_content_desktop.dart';

var games = ['KTH IBK', 'Lund IBK', 'Linköping IBK'];

class PlayerLayoutView extends StatefulWidget {

  const PlayerLayoutView({Key? key, required this.title, required this.number, required this.position,
    required this.birthYear, required this.picture, required this.speed,
    required this.acc, required this.dist, required this.xCoords, required this.yCoords, required this.heatmaps}) : super(key: key);

  final String title;
  final number;
  final String position;
  final birthYear;
  final String picture;
  final List<List<List<Color>>> heatmaps;

  final speed;
  final acc;
  final dist;
  final xCoords;
  final yCoords;


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
                        height: 135,
                        width: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            widget.picture,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 280,
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'NAMN:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  widget.title,
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
                                const Text(
                                  'POSITION:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  widget.position,
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
                                const Text(
                                  'NUMMER:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  widget.number.toString(),
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
                                const Text(
                                  'FÖDELSEÅR:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  widget.birthYear.toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 22, width: 20,),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, PlayersRoute);
                                },
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: primaryColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'BYT SPELARE',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
                  width: 70,
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
                                            '${widget.speed[games.indexOf(selectedGame)]}    [m/s]',
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
                                            '${widget.acc[games.indexOf(selectedGame)]}    [m/s^2]',
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
                                            '${widget.dist[games.indexOf(selectedGame)]}    [km]',
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
                                child: EbbaView(
                                  matrixColour: widget.heatmaps[games.indexOf(selectedGame)],
                                )
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

//SizedBox(
//                                   width: 410,
//                                   height: 154,
//                                   child: HannesHeatmap(
//                                     coordinatesY2: widget.yCoords[games.indexOf(selectedGame)],
//                                     coordinatesX1: widget.xCoords[games.indexOf(selectedGame)],
//                                   ),
//                                 ),
