
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column3 extends StatelessWidget {
  Column3({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section31 = 0;
  var section32 = 0;
  var section33 = 0;
  var section34 = 0;
  var section35 = 0;
  var section36 = 0;
  var section37 = 0;
  var section38 = 0;
  var section39 = 0;
  var section310 = 0;
  var section31Percent = 0.0;
  var section32Percent = 0.0;
  var section33Percent = 0.0;
  var section34Percent = 0.0;
  var section35Percent = 0.0;
  var section36Percent = 0.0;
  var section37Percent = 0.0;
  var section38Percent = 0.0;
  var section39Percent = 0.0;
  var section310Percent = 0.0;
  Color section31Color = Colors.white;
  Color section32Color = Colors.white;
  Color section33Color = Colors.white;
  Color section34Color = Colors.white;
  Color section35Color = Colors.white;
  Color section36Color = Colors.white;
  Color section37Color = Colors.white;
  Color section38Color = Colors.white;
  Color section39Color = Colors.white;
  Color section310Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section31Percent, section32Percent, section33Percent, section34Percent, section35Percent,
      section36Percent, section37Percent, section38Percent, section39Percent, section310Percent,
    ];

    var sectionColors = [
      section31Color, section32Color, section33Color, section34Color, section35Color,
      section36Color, section37Color, section38Color, section39Color, section310Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section31++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section32++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section33++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section34++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section35++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section36++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section37++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section38++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section39++;
        i++;
      }
      else if ((coordinatesX[i] > 80 && coordinatesX[i] <= 120) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section310++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section31 / lengthCoordinates);
    sectionPercentages[1] = (section32 / lengthCoordinates);
    sectionPercentages[2] = (section33 / lengthCoordinates);
    sectionPercentages[3] = (section34 / lengthCoordinates);
    sectionPercentages[4] = (section35 / lengthCoordinates);
    sectionPercentages[5] = (section36 / lengthCoordinates);
    sectionPercentages[6] = (section37 / lengthCoordinates);
    sectionPercentages[7] = (section38 / lengthCoordinates);
    sectionPercentages[8] = (section39 / lengthCoordinates);
    sectionPercentages[9] = (section310 / lengthCoordinates);

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
