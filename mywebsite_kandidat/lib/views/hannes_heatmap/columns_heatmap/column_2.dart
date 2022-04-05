
import 'package:flutter/material.dart';

import '../field_area.dart';

class Column2 extends StatelessWidget {
  Column2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.pink,),
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.blue,),
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.red,),
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.greenAccent,),
        FieldArea(fieldColor: Colors.greenAccent,),
      ],);
  }
}