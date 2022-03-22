import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_item.dart';

class Player{
  var name; // Later added by coach
  var id; // Id it gets when created - connected with a picture?
  var number; // Later added by coach, or updated if found
  var team; // Later added or changed by coach
  var heatMap;  // Created by us
  var highSpeed;  // Created by us
  final otherIDs = <int> [];  // List of ids connected to the same person

  Player(var id){
    this.id = id;
  }
}
// if two (or more) players have the same number, name and team they get added
// together into one person

class Team{
  var name; // Later added or changed by coach
  var colour; // Maybe not needed
  final players = <Player> [];  // list of all players in this team
}

class PlayersView extends StatelessWidget {
  const PlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 400,
          width: 400,
          child: const NavBarItem('Denna sida är för alla spelare', StatsRoute),
        ),
      ),

    );
  }
}
