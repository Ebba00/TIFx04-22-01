
import 'package:flutter/material.dart';
import 'field_area.dart';

var coordinatesX = [12,24,5,7,3,29,15];
var coordinatesY = [15,14,24,28,4,8,25];

class HannesHeatmap extends StatelessWidget {
  HannesHeatmap({Key? key}) : super(key: key);

  var lengthCoordinates = coordinatesX.length;

  var section11 = 0;
  var section11Percent = 0.0;
  var i = 0;

  @override
  Widget build(BuildContext context) {
    while (i < lengthCoordinates) {
      if (coordinatesX[i] < 20 && coordinatesY[i] < 20) {
        section11++;
        i++;
      }
      else {
        i++;
      }
    }

    section11Percent = (section11/lengthCoordinates);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 200,
          width: 400,
          child:
            Row(
              children: [
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.pink,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.red,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
                Column(
                  children: const [
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                    FieldArea(fieldColor: Colors.greenAccent,),
                  ],),
              ],
            ),
        ),
      ],
    );
  }
}