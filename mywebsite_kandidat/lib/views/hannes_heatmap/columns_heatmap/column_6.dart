
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column6 extends StatelessWidget {
  Column6({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section61 = 0;
  var section62 = 0;
  var section63 = 0;
  var section64 = 0;
  var section65 = 0;
  var section66 = 0;
  var section67 = 0;
  var section68 = 0;
  var section69 = 0;
  var section610 = 0;
  var section61Percent = 0.0;
  var section62Percent = 0.0;
  var section63Percent = 0.0;
  var section64Percent = 0.0;
  var section65Percent = 0.0;
  var section66Percent = 0.0;
  var section67Percent = 0.0;
  var section68Percent = 0.0;
  var section69Percent = 0.0;
  var section610Percent = 0.0;
  Color section61Color = Colors.white;
  Color section62Color = Colors.white;
  Color section63Color = Colors.white;
  Color section64Color = Colors.white;
  Color section65Color = Colors.white;
  Color section66Color = Colors.white;
  Color section67Color = Colors.white;
  Color section68Color = Colors.white;
  Color section69Color = Colors.white;
  Color section610Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section61Percent, section62Percent, section63Percent, section64Percent, section65Percent,
      section66Percent, section67Percent, section68Percent, section69Percent, section610Percent,
    ];

    var sectionColors = [
      section61Color, section62Color, section63Color, section64Color, section65Color,
      section66Color, section67Color, section68Color, section69Color, section610Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section61++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section62++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section63++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section64++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section65++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section66++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section67++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section68++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section69++;
        i++;
      }
      else if ((coordinatesX[i] > 200 && coordinatesX[i] <= 240) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section610++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section61 / lengthCoordinates);
    sectionPercentages[1] = (section62 / lengthCoordinates);
    sectionPercentages[2] = (section63 / lengthCoordinates);
    sectionPercentages[3] = (section64 / lengthCoordinates);
    sectionPercentages[4] = (section65 / lengthCoordinates);
    sectionPercentages[5] = (section66 / lengthCoordinates);
    sectionPercentages[6] = (section67 / lengthCoordinates);
    sectionPercentages[7] = (section68 / lengthCoordinates);
    sectionPercentages[8] = (section69 / lengthCoordinates);
    sectionPercentages[9] = (section610 / lengthCoordinates);

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
