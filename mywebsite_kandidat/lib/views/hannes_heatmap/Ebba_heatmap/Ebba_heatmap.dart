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
    int xNew = (xCoord[i]).round();  // 2 , 2.85
    int yNew = (yCoord[i]).round(); // 1.25 , 7.5
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
  //print(matrix2);
  //print(maxValue);
  // row = y, col = x
  for (var row = 0; row < 10; row++) {
    for (var col = 0; col < 20; col++) {
      // colour each area
      var position = matrix2[row][col];
      if (position == maxValue) {
        position = position + 20;
      }
      //print(position);
      if (position > 0.85 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(77, 0, 31, 1.0); // Darkest
      }
      else if (position > 0.08 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(102, 0, 41, 1.0); // Darkest
      }
      else if (position > 0.075 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(117, 0, 46, 1.0); // Darkest
      }
      else if (position > 0.07 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(128, 0, 51, 1.0); // Darkest
      }
      else if (position > 0.065 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(153, 0, 61, 1.0); // Darkest
      }
      else if (position > 0.06 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(179, 0, 71, 1.0);
      }
      else if (position > 0.055 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(191, 0, 76, 1.0);
      }
      else if (position > 0.05 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(204, 0, 82, 1.0);
      }
      else if (position > 0.045 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(230, 0, 92, 1.0);
      }
      else if (position > 0.04 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 0, 102, 1.0);
      }
      else if (position > 0.035 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 26, 117, 1.0);
      }
      else if (position > 0.03 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 51, 133, 1.0); // Darkest
      }
      else if (position > 0.025 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 77, 148, 1.0);
      }
      else if (position > 0.02 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 102, 163, 1.0);
      }
      else if (position > 0.015 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 128, 179, 1.0);
      }
      else if (position > 0.01 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 153, 194, 1.0);
      }
      else if (position > 0.005 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 179, 209, 1.0);
      }
      else if (position > 0.001 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 204, 224, 1.0);
      }
      else if (position > 0.0005 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(255, 230, 240, 1.0);
      }
    }
  }
  return matrixColour;
}