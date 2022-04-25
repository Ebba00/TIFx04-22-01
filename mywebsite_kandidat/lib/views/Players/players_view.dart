import 'package:flutter/material.dart';
import '../../widgets/player_button/player_button.dart';
import 'all_players/playerObject.dart';

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

List<String> playersName = ['Kungen', 'Drottningen',
  'Anna Nilsson', 'Hassan Mohammed', 'Liam Neeson', 'Hannes Gustafsson',
  'Hamza Jašarević', 'Pontus Johansson', 'Oskar Kullner', 'Ebba Molinder',
  'Victor Salomonsson', 'Elsa Beskow', 'Gustav Vasa', 'Albert Einstein',
  'Isaac Newton', 'Marie Curie', 'Nikola Tesla', 'William Chalmers'];
List<int> playersNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  16, 17, 18];
List<int> playersBirthYear = [1946, 1943, 1978, 1999, 1952, 2000, 2000, 1993,
  1996, 2000, 2000, 1874, 1496, 1879, 1643, 1867, 1856, 1748];
List<String> playerPositions = ['Målvakt', 'Målvakt', 'Back', 'Back', 'Forward',
  'Forward', 'Forward', 'Center', 'Forward', 'Forward', 'Center', 'Center',
  'Back', 'Back', 'Forward', 'Back', 'Back', 'Forward'];
int a = 0;
List<String> nameOfMatches = ['Match1', 'Match2', 'Match3'];
List<Match> matchObj = [];
List<Player> playersObj = [];
class PlayersView extends StatelessWidget {
  const PlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    for(var i = 0; i < nameOfMatches.length; i++){
      Match match = Match(nameOfMatches[i]);
      matchObj.add(match);
    }
    for(var i = 0; i < playersName.length; i++){
      Player player = Player(playersName[i], playersNumber[i], playersBirthYear[i], playerPositions[i]);
      player.matches = matchObj;
      playersObj.add(player);
    }
    Team team1 = new Team('Chalmers IBK Elit', 'Pride', playersObj);

    const String mittLag= 'Chalmers IBK Elit';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 40,),
        const Align(
          alignment: Alignment.center,
          child: Text(mittLag,
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
                PlayerButton( title: team1.players[0].name, number: team1.players[0].number, birthYear: team1.players[0].birthYear,
                  position: team1.players[0].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber2,
                  yCoords: yCoordinatesNumber2, acc: accNumber2, xCoords: xCoordinatesNumber2,
                  speed: speedNumber2,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[1].name, number: team1.players[1].number, birthYear: team1.players[1].birthYear,
                  position: team1.players[1].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[2].name, number: team1.players[2].number, birthYear: team1.players[2].birthYear,
                  position: team1.players[2].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[3].name, number: team1.players[3].number, birthYear: team1.players[3].birthYear,
                  position: team1.players[3].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: team1.players[4].name, number: team1.players[4].number, birthYear: team1.players[4].birthYear,
                  position: team1.players[4].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[5].name, number: team1.players[5].number, birthYear: team1.players[5].birthYear,
                  position: team1.players[5].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[6].name, number: team1.players[6].number, birthYear: team1.players[6].birthYear,
                  position: team1.players[6].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[7].name, number: team1.players[7].number, birthYear: team1.players[7].birthYear,
                  position: team1.players[7].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: team1.players[8].name, number: team1.players[8].number, birthYear: team1.players[8].birthYear,
                  position: team1.players[8].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[9].name, number: team1.players[9].number, birthYear: team1.players[9].birthYear,
                  position: team1.players[9].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[10].name, number: team1.players[10].number, birthYear: team1.players[10].birthYear,
                  position: team1.players[10].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[11].name, number: team1.players[11].number, birthYear: team1.players[11].birthYear,
                  position: team1.players[11].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: team1.players[12].name, number: team1.players[12].number, birthYear: team1.players[12].birthYear,
                  position: team1.players[12].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[13].name, number: team1.players[13].number, birthYear: team1.players[13].birthYear,
                  position: team1.players[13].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[14].name, number: team1.players[14].number, birthYear: team1.players[14].birthYear,
                  position: team1.players[14].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[15].name, number: team1.players[15].number, birthYear: team1.players[15].birthYear,
                  position: team1.players[15].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerButton( title: team1.players[16].name, number: team1.players[16].number, birthYear: team1.players[16].birthYear,
                  position: team1.players[16].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
                const SizedBox(height: 30,),
                PlayerButton( title: team1.players[17].name, number: team1.players[17].number, birthYear: team1.players[17].birthYear,
                  position: team1.players[17].positionInGame, picture: 'assets/playericon.jpg', dist: distanceNumber1,
                  yCoords: yCoordinatesNumber1, acc: accNumber1, xCoords: xCoordinatesNumber1,
                  speed: speedNumber1,),
              ],),
          ],
        ),
      ],
    );
  }
}
