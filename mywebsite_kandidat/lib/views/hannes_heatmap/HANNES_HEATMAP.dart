
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/columns_heatmap/column_2.dart';
import 'columns_heatmap/column_1.dart';
import 'columns_heatmap/column_10.dart';
import 'columns_heatmap/column_3.dart';
import 'columns_heatmap/column_4.dart';
import 'columns_heatmap/column_5.dart';
import 'columns_heatmap/column_6.dart';
import 'columns_heatmap/column_7.dart';
import 'columns_heatmap/column_8.dart';
import 'columns_heatmap/column_9.dart';

//var coordinatesX = List.generate(0, (int index) => true) as dynamic;
//var coordinatesY = List.generate(0, (int index) => true) as dynamic;

//var coordinatesX = [];
//var coordinatesY = [];

class HannesHeatmap extends StatelessWidget {
  HannesHeatmap({Key? key, required this.coordinatesX1, required this.coordinatesY2}) : super(key: key);

  final coordinatesX1;
  final coordinatesY2;

  @override
  Widget build(BuildContext context) {

    //Generates 100 random coordinates
    //for (var i = 0; i < 1; i++) {
      //coordinatesX[i].add(Random().nextInt(10));
      //coordinatesY[i].add(Random().nextInt(10));
    //}

    //coordinatesX = [14, 53, 53, 23, 89, 390,239, 310];
    //coordinatesY = [80, 123, 153, 3, 189, 90,139, 110];

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 204,
          width: 404,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0)
          ),
          child:
            Row(
              children: [
                Column1(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column2(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column3(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column4(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column5(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column6(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column7(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column8(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column9(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
                Column10(coordinatesX: coordinatesX1, coordinatesY: coordinatesY2,),
              ],
            ),
        ),
      ],
    );
  }
}