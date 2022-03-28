import 'package:flutter/material.dart';
//import 'package:flutter/flutter_heat_map.dart';



List<List<int>> randomMatrix(List<List<int>> matrix){

  for (var i = 0; i < 90; i++){
    for (var j = 0; j < 90; j++){
      if (i == 45 && j == 25){
        matrix[i][j] = 7;
      }
      else if (i % 10 == 0 && j % 10 == 0){
        matrix[i][j] = 2;
      }
    }
  }
  return matrix;
}



// Heatmap
// Nothing
// Blue
// Light blue
// Light green
// Yellow
// Orange
// Red