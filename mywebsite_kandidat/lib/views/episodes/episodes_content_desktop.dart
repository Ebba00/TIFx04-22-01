import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mywebsite_kandidat/Dropdown/dropdown_button_name.dart';
import '../../Dropdown/drop_down_game.dart';
import '../../Dropdown/dropdown_button_name.dart';
import '../../VARIABLES.dart';


var names = [
  'Spelare 1',
  'Spelare 2',
  'Spelare 3',
];

var games = [
  'Match 1',
  'Match 2',
  'Match 3',
];

var hannesSpeed = [10,11,12];
var ebbaSpeed = [20,21,22];
var oscarSpeed = [30,31,32];

var speed = [hannesSpeed,ebbaSpeed,oscarSpeed];

var hannesAcc = [20,21,22];
var ebbaAcc = [30,31,32];
var oscarAcc = [40,41,42];

var acc = [hannesAcc,ebbaAcc,oscarAcc];

var hannesDistance = [30,31,32];
var ebbaDistance = [40,41,42];
var oscarDistance = [50,51,52];

var distance = [hannesDistance,ebbaDistance,oscarDistance];

var hannesHeatmaps = ['assets/ExHeatmap.PNG','assets/ExHeatmap.PNG','assets/ExHeatmap.PNG'];
var ebbaHeatmaps = ['assets/ExHeatmap.PNG','assets/ExHeatmap.PNG','assets/ExHeatmap.PNG'];
var oscarHeatmaps = ['assets/ExHeatmap.PNG','assets/ExHeatmap.PNG','assets/ExHeatmap.PNG'];

var heatmaps = [hannesHeatmaps,ebbaHeatmaps,oscarHeatmaps];

class Parent extends StatefulWidget {
  const Parent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EpisodesContentDesktop();
  }
}

class EpisodesContentDesktop extends State<Parent> {
  String selectedName = names[0];
  String selectedGame = games[0];
  int selectedSpeed = speed[0][0];
  String selectedHeatmap = heatmaps[0][0];


  @override
  Widget build(BuildContext context) {
    print(newList);
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
      SizedBox(
      width: 350,
      child: Image.asset(heatmaps[names.indexOf(selectedName)][games.indexOf(selectedGame)],),
      ),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Container(
                margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.all(10.0),
                //decoration: BoxDecoration(
                  //color: Colors.white,
                  //borderRadius: BorderRadius.circular(5),
                //),
                child: DropDownButtonName(items: names, selectedItem: selectedName, onChange: (String newValue) {
                  setState(() {
                    selectedName = newValue;
                  });
                }),
              ),
              Container(
                margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.all(10.0),
                //decoration: myBoxDecoration(),
                child: DropDownButtonGame(items: games, selectedItem: selectedGame, onChange: (String newValue) {
                  setState(() {
                    selectedGame = newValue;
                  });
                }),
              ),
            ],),

            Container(
              width: 400,
              height: 112,
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(),
              child: Align(
                alignment: Alignment.center,
                child: Text('Maxhastighet:  ${speed[names.indexOf(selectedName)][games.indexOf(selectedGame)]} [m/s]\n\nHögsta acceleration:  ${acc[names.indexOf(selectedName)][games.indexOf(selectedGame)]}  [m/s^2]'
                    '\n\nTotal distans:  ${distance[names.indexOf(selectedName)][games.indexOf(selectedGame)]}  [km]',
                style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1,
                    fontSize: 14,

                ),
              ),
              ),
            ),
          ],
        ),)
      ],
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
    color: const Color(0xFF0E3311).withOpacity(0.1),
    borderRadius: BorderRadius.circular(5)
  );
}
