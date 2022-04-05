
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column4 extends StatelessWidget {
  Column4({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section41 = 0;
  var section42 = 0;
  var section43 = 0;
  var section44 = 0;
  var section45 = 0;
  var section46 = 0;
  var section47 = 0;
  var section48 = 0;
  var section49 = 0;
  var section410 = 0;
  var section41Percent = 0.0;
  var section42Percent = 0.0;
  var section43Percent = 0.0;
  var section44Percent = 0.0;
  var section45Percent = 0.0;
  var section46Percent = 0.0;
  var section47Percent = 0.0;
  var section48Percent = 0.0;
  var section49Percent = 0.0;
  var section410Percent = 0.0;
  Color section41Color = Colors.white;
  Color section42Color = Colors.white;
  Color section43Color = Colors.white;
  Color section44Color = Colors.white;
  Color section45Color = Colors.white;
  Color section46Color = Colors.white;
  Color section47Color = Colors.white;
  Color section48Color = Colors.white;
  Color section49Color = Colors.white;
  Color section410Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section41Percent, section42Percent, section43Percent, section44Percent, section45Percent,
      section46Percent, section47Percent, section48Percent, section49Percent, section410Percent,
    ];

    var sectionColors = [
      section41Color, section42Color, section43Color, section44Color, section45Color,
      section46Color, section47Color, section48Color, section49Color, section410Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section41++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section42++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section43++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section44++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section45++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section46++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section47++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section48++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section49++;
        i++;
      }
      else if ((coordinatesX[i] > 120 && coordinatesX[i] <= 160) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section410++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section41 / lengthCoordinates);
    sectionPercentages[1] = (section42 / lengthCoordinates);
    sectionPercentages[2] = (section43 / lengthCoordinates);
    sectionPercentages[3] = (section44 / lengthCoordinates);
    sectionPercentages[4] = (section45 / lengthCoordinates);
    sectionPercentages[5] = (section46 / lengthCoordinates);
    sectionPercentages[6] = (section47 / lengthCoordinates);
    sectionPercentages[7] = (section48 / lengthCoordinates);
    sectionPercentages[8] = (section49 / lengthCoordinates);
    sectionPercentages[9] = (section410 / lengthCoordinates);

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
