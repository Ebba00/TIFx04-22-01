import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/Players/stats_view.dart';

import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_item.dart';
import '../../widgets/player_button/player_button.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 45,),
        const Align(
          alignment: Alignment.center,
          child: Text('Välj en spelare!',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.black,
            ),),),
        const SizedBox(height: 15,),
        const Align(
          alignment: Alignment.center,
          child: Text('Klicka på en spelare för att ta del av dennes data från föregående matcher.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black,
            ),),),
        const SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: 'Hannes Gustafsson', navigationPath: HannesGRoute,),
              ],),
          ],
        ),
      ],
    );
  }
}
