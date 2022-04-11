import 'package:flutter/material.dart';

import '../../hannes_heatmap/HANNES_HEATMAP.dart';

var coordinatesX = [];
var coordinatesY = [];

class HannesGView extends StatelessWidget {
  const HannesGView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

   coordinatesX = [14, 53, 53, 23, 89, 390,239, 310];
   coordinatesY = [80, 123, 153, 3, 189, 90,139, 110];


    return HannesHeatmap(coordinatesY2: coordinatesY, coordinatesX1: coordinatesX,);
  }
}