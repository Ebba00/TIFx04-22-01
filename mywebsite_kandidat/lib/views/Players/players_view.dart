import 'package:flutter/material.dart';
import '../../widgets/player_button/player_button.dart';

var speedNumber1 = [10, 11, 12];
var accNumber1 = [20, 21, 22];
var distanceNumber1 = [30, 31, 32];
var xCoordinatesNumber1 = [[14, 53, 53, 23, 89, 390, 239, 310],
  [], [114, 153, 153, 223, 289, 90, 39, 210]];
var yCoordinatesNumber1 = [[80, 123, 153, 3, 189, 90, 139, 110],
  [], [180, 12, 53, 39, 19, 190, 39, 10]];

var speedNumber2 = [100, 101, 102];
var accNumber2 = [200, 201, 202];
var distanceNumber2 = [300, 301, 302];
var xCoordinatesNumber2 = [[], [], []];
var yCoordinatesNumber2 = [[], [], []];





class PlayersView extends StatelessWidget {
  const PlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 40,),
        const Align(
          alignment: Alignment.center,
          child: Text('Mitt lag',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.black,
            ),),),
        const SizedBox(height: 15,),
        const Align(
          alignment: Alignment.center,
          child: Text('Klicka på en spelare för att ta se data från deras spelade matcher.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black,
            ),),),
        const SizedBox(height: 70,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: 'Lars Andersson', number: '3', birthYear: '1992',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber2,
                  yCoords: yCoordinatesNumber2, acc: accNumber2, xCoords: xCoordinatesNumber2,
                  speed: speedNumber2,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Mikael Johansson', number: '13', birthYear: '1995',
                  position: 'Center', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Anders Karlsson', number: '19', birthYear: '1990',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: 'Johan Nilsson', number: '4', birthYear: '2001',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Erik Larsson', number: '15', birthYear: '2000',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Per Eriksson', number: '25', birthYear: '1987',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: 'Peter Olsson', number: '7', birthYear: '1995',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Thomas Persson', number: '16', birthYear: '1995',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Karl Svensson', number: '29', birthYear: '2003',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: 'Jan Gustafsson', number: '9', birthYear: '1985',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Rickard Sundström', number: '17', birthYear: '1999',
                  position: 'Center', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Magnus Jansson', number: '47', birthYear: '2000',
                  position: 'Back', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: 'Albin Stensson', number: '10', birthYear: '2001',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Isak Forsström', number: '18', birthYear: '1998',
                  position: 'Center', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: 'Emil Rhenberg', number: '83', birthYear: '1997',
                  position: 'Forward', picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
          ],
        ),
      ],
    );
  }
}
