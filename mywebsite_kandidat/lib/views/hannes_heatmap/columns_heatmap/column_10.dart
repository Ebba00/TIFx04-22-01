
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column10 extends StatelessWidget {
  Column10({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section101 = 0;
  var section102 = 0;
  var section103 = 0;
  var section104 = 0;
  var section105 = 0;
  var section106 = 0;
  var section107 = 0;
  var section108 = 0;
  var section109 = 0;
  var section1010 = 0;
  var section101Percent = 0.0;
  var section102Percent = 0.0;
  var section103Percent = 0.0;
  var section104Percent = 0.0;
  var section105Percent = 0.0;
  var section106Percent = 0.0;
  var section107Percent = 0.0;
  var section108Percent = 0.0;
  var section109Percent = 0.0;
  var section1010Percent = 0.0;
  Color section101Color = Colors.white;
  Color section102Color = Colors.white;
  Color section103Color = Colors.white;
  Color section104Color = Colors.white;
  Color section105Color = Colors.white;
  Color section106Color = Colors.white;
  Color section107Color = Colors.white;
  Color section108Color = Colors.white;
  Color section109Color = Colors.white;
  Color section1010Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section101Percent, section102Percent, section103Percent, section104Percent, section105Percent,
      section106Percent, section107Percent, section108Percent, section109Percent, section1010Percent,
    ];

    var sectionColors = [
      section101Color, section102Color, section103Color, section104Color, section105Color,
      section106Color, section107Color, section108Color, section109Color, section1010Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section101++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section102++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section103++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section104++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section105++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section106++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section107++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section108++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section109++;
        i++;
      }
      else if ((coordinatesX[i] > 360 && coordinatesX[i] <= 400) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section1010++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section101 / lengthCoordinates);
    sectionPercentages[1] = (section102 / lengthCoordinates);
    sectionPercentages[2] = (section103 / lengthCoordinates);
    sectionPercentages[3] = (section104 / lengthCoordinates);
    sectionPercentages[4] = (section105 / lengthCoordinates);
    sectionPercentages[5] = (section106 / lengthCoordinates);
    sectionPercentages[6] = (section107 / lengthCoordinates);
    sectionPercentages[7] = (section108 / lengthCoordinates);
    sectionPercentages[8] = (section109 / lengthCoordinates);
    sectionPercentages[9] = (section1010 / lengthCoordinates);

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
