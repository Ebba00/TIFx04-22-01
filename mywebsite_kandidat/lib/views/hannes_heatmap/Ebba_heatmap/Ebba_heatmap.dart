import 'package:flutter/material.dart';


var xCoord = [14, 53, 53, 23, 89, 390, 239, 310, 14, 53, 53, 23, 89, 390, 239, 310, 14, 53, 53, 23, 89, 390, 239, 310, 14, 53, 53, 23, 89, 390, 239, 310, 14, 53, 53, 23, 89, 390, 239, 310, 14, 53, 53, 23, 89, 390, 239, 310];
var yCoord = [80, 123, 153, 3, 189, 90, 139, 110, 80, 123, 153, 3, 189, 90, 139, 110, 80, 123, 153, 3, 189, 90, 139, 110, 80, 123, 153, 3, 189, 90, 139, 110, 80, 123, 153, 3, 189, 90, 139, 110, 80, 123, 153, 3, 189, 90, 139, 110];

var columns = 20;	// x
var rows = 10;	// y
var maxValue = 0;
var allPositions = 0;


final List<List<int>> matrix2 = List.generate(
    rows, (i) => List.generate(columns, (j) => 0));

// matrix[10][20];

// coordinatesMaxX = 400;
// coordinatesMaxY = 200;
List<List<Color>> colouredMatrix(List<List<Color>> matrixColour) {
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
        position = position + 3;
      }
      if (position > 0.8 * allPositions) {
        matrixColour[row][col] =
        const Color.fromRGBO(0, 34, 85, 1.0); // Darkest
      }
      else if (position > 0.7 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(10, 46, 102, 1.0);
      }
      else if (position > 0.6 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(23, 61, 119, 1.0);
      }
      else if (position > 0.5 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(40, 78, 136, 1.0);
      }
      else if (position > 0.4 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(61, 97, 153, 1.0);
      }
      else if (position > 3) {
        matrixColour[row][col] = const Color.fromRGBO(85, 119, 170, 1.0);
      }
      else if (position > 0.2 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(112, 142, 187, 1.0);
      }
      else if (position > 0.1 * allPositions) {
        matrixColour[row][col] = const Color.fromRGBO(142, 167, 204, 1.0);
      }
    }
  }
  return matrixColour;
}