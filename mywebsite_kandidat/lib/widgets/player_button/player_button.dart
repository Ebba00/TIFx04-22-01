import 'package:flutter/material.dart';
import '../../views/Players/all_players/PLAYER_LAYOUT_TEST.dart';

bool isHovering = false;

class PlayerButton extends StatefulWidget {
  final String title;
  final number;
  final String position;
  final birthYear;
  final String picture;

  final speed;
  final acc;
  final dist;
  final xCoords;
  final yCoords;

  const PlayerButton({Key? key, required this.title, required this.number, required this.position,
    required this.birthYear, required this.picture, required this.speed, required this.acc,
    required this.dist, required this.xCoords, required this.yCoords}) : super(key: key);

  @override
  State createState() => PlayerButtonState(); }

class PlayerButtonState extends State <PlayerButton>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            PlayerLayoutView(title: widget.title, birthYear: widget.birthYear,
              number: widget.number, position: widget.position, picture: widget.picture,
              speed: widget.speed, acc: widget.acc, dist: widget.dist, xCoords: widget.xCoords,
              yCoords: widget.yCoords,)));
      },
      onHover: (hovering) {
        setState(() => isHovering = hovering);
      },
      child: Container(
        width: 180,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Align(
          alignment: Alignment.center,
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${widget.number}.',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
        ),
        decoration: (isHovering
        ?  BoxDecoration(color: Colors.black38,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2,),)
        :  BoxDecoration(color: Colors.white70,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2,),)
        )
      ),
    );
  }
}