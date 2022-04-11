import 'package:flutter/material.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';

bool isHovering = false;

class PlayerButton extends StatefulWidget {
  final String title;
  final String navigationPath;
  const PlayerButton({Key? key, required this.title, required this.navigationPath}) : super(key: key);


  @override
  State createState() => PlayerButtonState(); }

class PlayerButtonState extends State <PlayerButton>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(widget.navigationPath);
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
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
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