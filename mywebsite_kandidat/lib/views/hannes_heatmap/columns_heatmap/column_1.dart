
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column1 extends StatelessWidget {
  Column1({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section11 = 0;
  var section12 = 0;
  var section13 = 0;
  var section14 = 0;
  var section15 = 0;
  var section16 = 0;
  var section17 = 0;
  var section18 = 0;
  var section19 = 0;
  var section110 = 0;
  var section11Percent = 0.0;
  var section12Percent = 0.0;
  var section13Percent = 0.0;
  var section14Percent = 0.0;
  var section15Percent = 0.0;
  var section16Percent = 0.0;
  var section17Percent = 0.0;
  var section18Percent = 0.0;
  var section19Percent = 0.0;
  var section110Percent = 0.0;
  Color section11Color = Colors.white;
  Color section12Color = Colors.white;
  Color section13Color = Colors.white;
  Color section14Color = Colors.white;
  Color section15Color = Colors.white;
  Color section16Color = Colors.white;
  Color section17Color = Colors.white;
  Color section18Color = Colors.white;
  Color section19Color = Colors.white;
  Color section110Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section11Percent, section12Percent, section13Percent, section14Percent, section15Percent,
      section16Percent, section17Percent, section18Percent, section19Percent, section110Percent,
    ];

    var sectionColors = [
      section11Color, section12Color, section13Color, section14Color, section15Color,
      section16Color, section17Color, section18Color, section19Color, section110Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section11++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section12++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section13++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section14++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section15++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section16++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section17++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section18++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section19++;
        i++;
      }
      else if ((coordinatesX[i] > 0 && coordinatesX[i] <= 40) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section110++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section11 / lengthCoordinates);
    sectionPercentages[1] = (section12 / lengthCoordinates);
    sectionPercentages[2] = (section13 / lengthCoordinates);
    sectionPercentages[3] = (section14 / lengthCoordinates);
    sectionPercentages[4] = (section15 / lengthCoordinates);
    sectionPercentages[5] = (section16 / lengthCoordinates);
    sectionPercentages[6] = (section17 / lengthCoordinates);
    sectionPercentages[7] = (section18 / lengthCoordinates);
    sectionPercentages[8] = (section19 / lengthCoordinates);
    sectionPercentages[9] = (section110 / lengthCoordinates);

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
