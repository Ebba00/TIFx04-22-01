
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column9 extends StatelessWidget {
  Column9({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section91 = 0;
  var section92 = 0;
  var section93 = 0;
  var section94 = 0;
  var section95 = 0;
  var section96 = 0;
  var section97 = 0;
  var section98 = 0;
  var section99 = 0;
  var section910 = 0;
  var section91Percent = 0.0;
  var section92Percent = 0.0;
  var section93Percent = 0.0;
  var section94Percent = 0.0;
  var section95Percent = 0.0;
  var section96Percent = 0.0;
  var section97Percent = 0.0;
  var section98Percent = 0.0;
  var section99Percent = 0.0;
  var section910Percent = 0.0;
  Color section91Color = Colors.white;
  Color section92Color = Colors.white;
  Color section93Color = Colors.white;
  Color section94Color = Colors.white;
  Color section95Color = Colors.white;
  Color section96Color = Colors.white;
  Color section97Color = Colors.white;
  Color section98Color = Colors.white;
  Color section99Color = Colors.white;
  Color section910Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section91Percent, section92Percent, section93Percent, section94Percent, section95Percent,
      section96Percent, section97Percent, section98Percent, section99Percent, section910Percent,
    ];

    var sectionColors = [
      section91Color, section92Color, section93Color, section94Color, section95Color,
      section96Color, section97Color, section98Color, section99Color, section910Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section91++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section92++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section93++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section94++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section95++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section96++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section97++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section98++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section99++;
        i++;
      }
      else if ((coordinatesX[i] > 320 && coordinatesX[i] <= 360) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section910++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section91 / lengthCoordinates);
    sectionPercentages[1] = (section92 / lengthCoordinates);
    sectionPercentages[2] = (section93 / lengthCoordinates);
    sectionPercentages[3] = (section94 / lengthCoordinates);
    sectionPercentages[4] = (section95 / lengthCoordinates);
    sectionPercentages[5] = (section96 / lengthCoordinates);
    sectionPercentages[6] = (section97 / lengthCoordinates);
    sectionPercentages[7] = (section98 / lengthCoordinates);
    sectionPercentages[8] = (section99 / lengthCoordinates);
    sectionPercentages[9] = (section910 / lengthCoordinates);

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
