
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column2 extends StatelessWidget {
  Column2({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section21 = 0;
  var section22 = 0;
  var section23 = 0;
  var section24 = 0;
  var section25 = 0;
  var section26 = 0;
  var section27 = 0;
  var section28 = 0;
  var section29 = 0;
  var section210 = 0;
  var section21Percent = 0.0;
  var section22Percent = 0.0;
  var section23Percent = 0.0;
  var section24Percent = 0.0;
  var section25Percent = 0.0;
  var section26Percent = 0.0;
  var section27Percent = 0.0;
  var section28Percent = 0.0;
  var section29Percent = 0.0;
  var section210Percent = 0.0;
  Color section21Color = Colors.white;
  Color section22Color = Colors.white;
  Color section23Color = Colors.white;
  Color section24Color = Colors.white;
  Color section25Color = Colors.white;
  Color section26Color = Colors.white;
  Color section27Color = Colors.white;
  Color section28Color = Colors.white;
  Color section29Color = Colors.white;
  Color section210Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section21Percent, section22Percent, section23Percent, section24Percent, section25Percent,
      section26Percent, section27Percent, section28Percent, section29Percent, section210Percent,
    ];

    var sectionColors = [
      section21Color, section22Color, section23Color, section24Color, section25Color,
      section26Color, section27Color, section28Color, section29Color, section210Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section21++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section22++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section23++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section24++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section25++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section26++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section27++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section28++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section29++;
        i++;
      }
      else if ((coordinatesX[i] > 40 && coordinatesX[i] <= 80) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section210++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section21 / lengthCoordinates);
    sectionPercentages[1] = (section22 / lengthCoordinates);
    sectionPercentages[2] = (section23 / lengthCoordinates);
    sectionPercentages[3] = (section24 / lengthCoordinates);
    sectionPercentages[4] = (section25 / lengthCoordinates);
    sectionPercentages[5] = (section26 / lengthCoordinates);
    sectionPercentages[6] = (section27 / lengthCoordinates);
    sectionPercentages[7] = (section28 / lengthCoordinates);
    sectionPercentages[8] = (section29 / lengthCoordinates);
    sectionPercentages[9] = (section210 / lengthCoordinates);

    while (j < 10) {
      if (sectionPercentages[j] > 0 && sectionPercentages[j] <= 0.10) {
        sectionColors[j] = const Color.fromRGBO(214, 223, 238, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.05 && sectionPercentages[j] < 0.10) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.10 && sectionPercentages[j] <= 0.20) {
        sectionColors[j] = const Color.fromRGBO(176, 194, 221, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.15 && sectionPercentages[j] < 0.20) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.20 && sectionPercentages[j] <= 0.30) {
        sectionColors[j] = const Color.fromRGBO(142, 167, 204, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.25 && sectionPercentages[j] < 0.30) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.30 && sectionPercentages[j] <= 0.40) {
        sectionColors[j] = const Color.fromRGBO(112, 142, 187, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.35 && sectionPercentages[j] < 0.40) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.40 && sectionPercentages[j] <= 0.50) {
        sectionColors[j] = const Color.fromRGBO(85, 119, 170, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.45 && sectionPercentages[j] < 0.50) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.50 && sectionPercentages[j] <= 0.60) {
        sectionColors[j] = const Color.fromRGBO(61, 97, 153, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.55 && sectionPercentages[j] < 0.60) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.60 && sectionPercentages[j] <= 0.70) {
        sectionColors[j] = const Color.fromRGBO(40, 78, 136, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.65 && sectionPercentages[j] < 0.70) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.70 && sectionPercentages[j] <= 0.80) {
        sectionColors[j] = const Color.fromRGBO(23, 61, 119, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.75 && sectionPercentages[j] < 0.80) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.80 && sectionPercentages[j] <= 0.90) {
        sectionColors[j] = const Color.fromRGBO(10, 46, 102, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.85 && sectionPercentages[j] < 0.90) {
      //sectionColors[j] = Colors.red;}
      else if (sectionPercentages[j] > 0.90 && sectionPercentages[j] <= 1) {
        sectionColors[j] = const Color.fromRGBO(0, 34, 85, 1.0);
        j++;}
      //else if (sectionPercentages[j] > 0.95 && sectionPercentages[j] < 1) {
      //sectionColors[j] = Colors.red;}
      else {
        sectionColors[j] = Colors.white;
        j++;}
    }


    return Column(
      children: [
        FieldArea(fieldColor: sectionColors[0],),
        FieldArea(fieldColor: sectionColors[1],),
        FieldArea(fieldColor: sectionColors[2],),
        FieldArea(fieldColor: sectionColors[3],),
        FieldArea(fieldColor: sectionColors[4],),
        FieldArea(fieldColor: sectionColors[5],),
        FieldArea(fieldColor: sectionColors[6],),
        FieldArea(fieldColor: sectionColors[7],),
        FieldArea(fieldColor: sectionColors[8],),
        FieldArea(fieldColor: sectionColors[9],),
      ],);
  }
}