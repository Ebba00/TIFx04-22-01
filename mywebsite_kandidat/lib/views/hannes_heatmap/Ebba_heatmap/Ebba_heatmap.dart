import 'package:flutter/material.dart';


var columns = 21;	// x
var rows = 11;	// y
var maxValue = 0;
var allPositions = 0;
/*
List<List<Color>> heatMap(xCoord, yCoord){
  List<List<int>> matrix2 = List.generate(
      rows, (i) => List.generate(columns, (j) => 0));
  List<List<Color>> matrixColour = List.generate(
      rows, (i) => List.generate(columns, (j) => Colors.white));

// coordinatesMaxX = 400;
// coordinatesMaxY = 200;
  //int lengthOfValues = xCoord.length;
  return colouredMatrix(xCoord, yCoord);

}*/
List<List<Color>> heatMap(xCoord, yCoord) {  // Matrix[11][21]
  List<List<int>> matrix2 = List.generate(
      rows, (i) => List.generate(columns, (j) => 0));
  List<List<Color>> matrixColour = List.generate(
      rows, (i) => List.generate(columns, (j) => Colors.white));
  int lengthOfValues = xCoord.length;
  if(yCoord.length < lengthOfValues){
    lengthOfValues = yCoord.length;
  }
  for (var i = 0; i < lengthOfValues; i++) { // xCoord.length == yCoord.length
    int xNew = (xCoord[i] * 2).round();  // 2.85
    int yNew = (yCoord[i] * 1.25).round(); // 7.5
    if (xNew > columns-1) {
      xNew = columns-1;
    }
    else if(xNew < 0){
      xNew = 0;
    }
    if (yNew > rows-1) {
      yNew = rows-1;
    }
    else if(yNew < 0){
      yNew = 0;
    }
    matrix2[yNew][xNew]++;
    allPositions++;
    if (maxValue < matrix2[yNew][xNew]) {
      maxValue = matrix2[yNew][xNew];
    }
  }
  // row = y, col = x
  for (var row = 0; row < 10; row++) {
    for (var col = 0; col < 20; col++) {
      // colour each area
      var position = matrix2[row][col];
      if (position == maxValue) {
        position = position + 200;
      }
      if (position > 0.08 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(0, 34, 85, 1.0); // Darkest
      }
      else if (position > 0.07 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(10, 46, 102, 1.0);
      }
      else if (position > 0.06 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(23, 61, 119, 1.0);
      }
      else if (position > 0.05 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(40, 78, 136, 1.0);
      }
      else if (position > 0.04 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(61, 97, 153, 1.0);
      }
      else if (position > 0.03 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(85, 119, 170, 1.0);
      }
      else if (position > 0.02 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(112, 142, 187, 1.0);
      }
      else if (position > 0.01 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(142, 167, 204, 1.0);
      }
    }
  }
  return matrixColour;
}