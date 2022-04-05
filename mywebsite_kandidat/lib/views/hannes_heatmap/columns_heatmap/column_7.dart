
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column7 extends StatelessWidget {
  Column7({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section71 = 0;
  var section72 = 0;
  var section73 = 0;
  var section74 = 0;
  var section75 = 0;
  var section76 = 0;
  var section77 = 0;
  var section78 = 0;
  var section79 = 0;
  var section710 = 0;
  var section71Percent = 0.0;
  var section72Percent = 0.0;
  var section73Percent = 0.0;
  var section74Percent = 0.0;
  var section75Percent = 0.0;
  var section76Percent = 0.0;
  var section77Percent = 0.0;
  var section78Percent = 0.0;
  var section79Percent = 0.0;
  var section710Percent = 0.0;
  Color section71Color = Colors.white;
  Color section72Color = Colors.white;
  Color section73Color = Colors.white;
  Color section74Color = Colors.white;
  Color section75Color = Colors.white;
  Color section76Color = Colors.white;
  Color section77Color = Colors.white;
  Color section78Color = Colors.white;
  Color section79Color = Colors.white;
  Color section710Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section71Percent, section72Percent, section73Percent, section74Percent, section75Percent,
      section76Percent, section77Percent, section78Percent, section79Percent, section710Percent,
    ];

    var sectionColors = [
      section71Color, section72Color, section73Color, section74Color, section75Color,
      section76Color, section77Color, section78Color, section79Color, section710Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section71++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section72++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section73++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section74++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section75++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section76++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section77++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section78++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section79++;
        i++;
      }
      else if ((coordinatesX[i] > 240 && coordinatesX[i] <= 280) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section710++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section71 / lengthCoordinates);
    sectionPercentages[1] = (section72 / lengthCoordinates);
    sectionPercentages[2] = (section73 / lengthCoordinates);
    sectionPercentages[3] = (section74 / lengthCoordinates);
    sectionPercentages[4] = (section75 / lengthCoordinates);
    sectionPercentages[5] = (section76 / lengthCoordinates);
    sectionPercentages[6] = (section77 / lengthCoordinates);
    sectionPercentages[7] = (section78 / lengthCoordinates);
    sectionPercentages[8] = (section79 / lengthCoordinates);
    sectionPercentages[9] = (section710 / lengthCoordinates);

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
