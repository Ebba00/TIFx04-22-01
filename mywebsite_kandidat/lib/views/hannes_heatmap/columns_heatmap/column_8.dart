
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column8 extends StatelessWidget {
  Column8({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section81 = 0;
  var section82 = 0;
  var section83 = 0;
  var section84 = 0;
  var section85 = 0;
  var section86 = 0;
  var section87 = 0;
  var section88 = 0;
  var section89 = 0;
  var section810 = 0;
  var section81Percent = 0.0;
  var section82Percent = 0.0;
  var section83Percent = 0.0;
  var section84Percent = 0.0;
  var section85Percent = 0.0;
  var section86Percent = 0.0;
  var section87Percent = 0.0;
  var section88Percent = 0.0;
  var section89Percent = 0.0;
  var section810Percent = 0.0;
  Color section81Color = Colors.white;
  Color section82Color = Colors.white;
  Color section83Color = Colors.white;
  Color section84Color = Colors.white;
  Color section85Color = Colors.white;
  Color section86Color = Colors.white;
  Color section87Color = Colors.white;
  Color section88Color = Colors.white;
  Color section89Color = Colors.white;
  Color section810Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section81Percent, section82Percent, section83Percent, section84Percent, section85Percent,
      section86Percent, section87Percent, section88Percent, section89Percent, section810Percent,
    ];

    var sectionColors = [
      section81Color, section82Color, section83Color, section84Color, section85Color,
      section86Color, section87Color, section88Color, section89Color, section810Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section81++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section82++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section83++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section84++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section85++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section86++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section87++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section88++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section89++;
        i++;
      }
      else if ((coordinatesX[i] > 280 && coordinatesX[i] <= 320) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section810++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section81 / lengthCoordinates);
    sectionPercentages[1] = (section82 / lengthCoordinates);
    sectionPercentages[2] = (section83 / lengthCoordinates);
    sectionPercentages[3] = (section84 / lengthCoordinates);
    sectionPercentages[4] = (section85 / lengthCoordinates);
    sectionPercentages[5] = (section86 / lengthCoordinates);
    sectionPercentages[6] = (section87 / lengthCoordinates);
    sectionPercentages[7] = (section88 / lengthCoordinates);
    sectionPercentages[8] = (section89 / lengthCoordinates);
    sectionPercentages[9] = (section810 / lengthCoordinates);

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
