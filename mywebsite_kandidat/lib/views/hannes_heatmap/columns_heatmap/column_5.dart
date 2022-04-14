
import 'package:flutter/material.dart';
import '../field_area.dart';

class Column5 extends StatelessWidget {
  Column5({Key? key, required this.coordinatesX, required this.coordinatesY}) : super(key: key);

  final coordinatesX;
  final coordinatesY;

  var section51 = 0;
  var section52 = 0;
  var section53 = 0;
  var section54 = 0;
  var section55 = 0;
  var section56 = 0;
  var section57 = 0;
  var section58 = 0;
  var section59 = 0;
  var section510 = 0;
  var section51Percent = 0.0;
  var section52Percent = 0.0;
  var section53Percent = 0.0;
  var section54Percent = 0.0;
  var section55Percent = 0.0;
  var section56Percent = 0.0;
  var section57Percent = 0.0;
  var section58Percent = 0.0;
  var section59Percent = 0.0;
  var section510Percent = 0.0;
  Color section51Color = Colors.white;
  Color section52Color = Colors.white;
  Color section53Color = Colors.white;
  Color section54Color = Colors.white;
  Color section55Color = Colors.white;
  Color section56Color = Colors.white;
  Color section57Color = Colors.white;
  Color section58Color = Colors.white;
  Color section59Color = Colors.white;
  Color section510Color = Colors.white;

  var i = 0;
  var j = 0;

  @override
  Widget build(BuildContext context) {

    var lengthCoordinates = coordinatesX.length;

    var sectionPercentages = [
      section51Percent, section52Percent, section53Percent, section54Percent, section55Percent,
      section56Percent, section57Percent, section58Percent, section59Percent, section510Percent,
    ];

    var sectionColors = [
      section51Color, section52Color, section53Color, section54Color, section55Color,
      section56Color, section57Color, section58Color, section59Color, section510Color,
    ];

    while (i < lengthCoordinates) {
      if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 0 && coordinatesY[i] <= 20)) {
        section51++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 20 && coordinatesY[i] <= 40)) {
        section52++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 40 && coordinatesY[i] <= 60)) {
        section53++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 60 && coordinatesY[i] <= 80)) {
        section54++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 80 && coordinatesY[i] <= 100)) {
        section55++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 100 && coordinatesY[i] <= 120)) {
        section56++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 120 && coordinatesY[i] <= 140)) {
        section57++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 140 && coordinatesY[i] <= 160)) {
        section58++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 160 && coordinatesY[i] <= 180)) {
        section59++;
        i++;
      }
      else if ((coordinatesX[i] > 160 && coordinatesX[i] <= 200) && (coordinatesY[i] > 180 && coordinatesY[i] <= 200)) {
        section510++;
        i++;
      }
      else{
        i++;
      }
    }

    sectionPercentages[0] = (section51 / lengthCoordinates);
    sectionPercentages[1] = (section52 / lengthCoordinates);
    sectionPercentages[2] = (section53 / lengthCoordinates);
    sectionPercentages[3] = (section54 / lengthCoordinates);
    sectionPercentages[4] = (section55 / lengthCoordinates);
    sectionPercentages[5] = (section56 / lengthCoordinates);
    sectionPercentages[6] = (section57 / lengthCoordinates);
    sectionPercentages[7] = (section58 / lengthCoordinates);
    sectionPercentages[8] = (section59 / lengthCoordinates);
    sectionPercentages[9] = (section510 / lengthCoordinates);

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


    return Container(
      height: 150,
      width: 31,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.black, width: 1,)
        )
      ),
      child:
        Column(
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
          ],),
    );
  }
}
