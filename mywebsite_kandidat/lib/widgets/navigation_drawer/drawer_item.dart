import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem (this.title, this.icon, this.navigationPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(children: <Widget>[
        Icon(icon),
        const SizedBox(width: 30,),
        NavBarItem(title, navigationPath)
       ],
      ),
    );
  }
}