import 'package:flutter/material.dart';

class HannesHeatmap extends StatelessWidget {
  HannesHeatmap({Key? key}) : super(key: key);


  var xCoord = [14, 53, 53, 23, 89, 390, 239, 310];
  var yCoord = [80, 123, 153, 3, 189, 90, 139, 110];

  var columns = 20;	// x
  var rows = 10;	// y

  @override
  Widget build(BuildContext context) {




final List<List<int>> matrix2 = List.generate(
    rows, (i) => List.generate(columns, (j) => 0));

// matrix[10][20];

// coordinatesMaxX = 400;
// coordinatesMaxY = 200;

    for (var i = 0; i < xCoord.length; i++) { // xCoord.length == yCoord.length
      int xNew = (xCoord[i] / 20).round();
      int yNew = (yCoord[i] / 20).round();
      if (xNew > columns) {
        xNew = columns;
      }
      if (yNew > rows) {
        yNew = rows;
      }
      matrix2[yNew][xNew]++;
    }

// row = y, col = x
    for (var row = 0; row < 10; row++) {
      for (var col = 0; col < 20; col++) {
// colour each area

      }
    }