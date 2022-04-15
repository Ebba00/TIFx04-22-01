import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/Players/stats_view.dart';

import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_item.dart';
import '../../widgets/player_button/player_button.dart';

class Player{
  var name; // Later added by coach
  var id; // Id it gets when created - connected with a picture?
  var number; // Later added by coach, or updated if found
  var position; // Added by coach for each player
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
        const SizedBox(height: 40,),
        /*const Align(
          alignment: Alignment.center,
          child: Text('Lägg till en spelare i ditt lag',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.black,
            ),),),
        SizedBox(height: 30,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Container(
          width: 275,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
           // controller: myControllerMail,
            decoration: const InputDecoration(
              hintText: 'Ange namn på spelaren',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          width: 275,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
         //   controller: myControllerMail,
            decoration: const InputDecoration(
              hintText: 'Ange spelarnummer',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          width: 275,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            //   controller: myControllerMail,
            decoration: const InputDecoration(
              hintText: 'Ange spelarens position',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ],
    ),
        SizedBox(height: 15,),
        SizedBox(
          height: 40,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 31, 229, 146), // background
              onPrimary: const Color.fromARGB(255, 31, 229, 146), // foreground
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(

              'LÄGG TILL',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            onPressed: () {

              // lägg till spelare i teamet och spelarlista
            },
         ),
        ),

         */
        const Align(
          alignment: Alignment.center,
          child: Text('MITT LAG',
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
              children: const [
                PlayerButton( title: '1. Hannes Gustafsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '6. Gustav Hannesson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '11. Oskar Kullner', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: '2. Victor Salomonsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '7. Pontus Johansson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '12. Hamza Jašarević', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: '3. Ebba Molinder', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '8. Pontus Salomonsson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '13. Oskar Gustafsson', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: '4. Hamza Kullner', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '9. Pontus Molinder', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '14. Hannes Jašarević', navigationPath: HannesGRoute,),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PlayerButton( title: '5. Victor Johansson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '10. Ebba Johansson', navigationPath: HannesGRoute,),
                SizedBox(height: 30,),
                PlayerButton( title: '15. Oskar Salomonsson', navigationPath: HannesGRoute,),
              ],),
          ],
        ),
      ],
    );
  }
}
