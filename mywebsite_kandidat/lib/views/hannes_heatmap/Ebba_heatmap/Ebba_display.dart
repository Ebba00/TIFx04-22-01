

import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/Ebba_heatmap/field_area2.dart';
import 'Ebba_heatmap.dart';

// matrixColour = colouredMatrix();

class EbbaView extends StatelessWidget {
  const EbbaView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 154,
          width: 305,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          child:
          Row(
            children: [
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][0],),
                  FieldArea2(fieldColor: matrixColour[1][0],),
                  FieldArea2(fieldColor: matrixColour[2][0],),
                  FieldArea2(fieldColor: matrixColour[3][0],),
                  FieldArea2(fieldColor: matrixColour[4][0],),
                  FieldArea2(fieldColor: matrixColour[5][0],),
                  FieldArea2(fieldColor: matrixColour[6][0],),
                  FieldArea2(fieldColor: matrixColour[7][0],),
                  FieldArea2(fieldColor: matrixColour[8][0],),
                  FieldArea2(fieldColor: matrixColour[9][0],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][1],),
                  FieldArea2(fieldColor: matrixColour[1][1],),
                  FieldArea2(fieldColor: matrixColour[2][1],),
                  FieldArea2(fieldColor: matrixColour[3][1],),
                  FieldArea2(fieldColor: matrixColour[4][1],),
                  FieldArea2(fieldColor: matrixColour[5][1],),
                  FieldArea2(fieldColor: matrixColour[6][1],),
                  FieldArea2(fieldColor: matrixColour[7][1],),
                  FieldArea2(fieldColor: matrixColour[8][1],),
                  FieldArea2(fieldColor: matrixColour[9][1],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][2],),
                  FieldArea2(fieldColor: matrixColour[1][2],),
                  FieldArea2(fieldColor: matrixColour[2][2],),
                  FieldArea2(fieldColor: matrixColour[3][2],),
                  FieldArea2(fieldColor: matrixColour[4][2],),
                  FieldArea2(fieldColor: matrixColour[5][2],),
                  FieldArea2(fieldColor: matrixColour[6][2],),
                  FieldArea2(fieldColor: matrixColour[7][2],),
                  FieldArea2(fieldColor: matrixColour[8][2],),
                  FieldArea2(fieldColor: matrixColour[9][2],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][3],),
                  FieldArea2(fieldColor: matrixColour[1][3],),
                  FieldArea2(fieldColor: matrixColour[2][3],),
                  FieldArea2(fieldColor: matrixColour[3][3],),
                  FieldArea2(fieldColor: matrixColour[4][3],),
                  FieldArea2(fieldColor: matrixColour[5][3],),
                  FieldArea2(fieldColor: matrixColour[6][3],),
                  FieldArea2(fieldColor: matrixColour[7][3],),
                  FieldArea2(fieldColor: matrixColour[8][3],),
                  FieldArea2(fieldColor: matrixColour[9][3],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][4],),
                  FieldArea2(fieldColor: matrixColour[1][4],),
                  FieldArea2(fieldColor: matrixColour[2][4],),
                  FieldArea2(fieldColor: matrixColour[3][4],),
                  FieldArea2(fieldColor: matrixColour[4][4],),
                  FieldArea2(fieldColor: matrixColour[5][4],),
                  FieldArea2(fieldColor: matrixColour[6][4],),
                  FieldArea2(fieldColor: matrixColour[7][4],),
                  FieldArea2(fieldColor: matrixColour[8][4],),
                  FieldArea2(fieldColor: matrixColour[9][4],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][5],),
                  FieldArea2(fieldColor: matrixColour[1][5],),
                  FieldArea2(fieldColor: matrixColour[2][5],),
                  FieldArea2(fieldColor: matrixColour[3][5],),
                  FieldArea2(fieldColor: matrixColour[4][5],),
                  FieldArea2(fieldColor: matrixColour[5][5],),
                  FieldArea2(fieldColor: matrixColour[6][5],),
                  FieldArea2(fieldColor: matrixColour[7][5],),
                  FieldArea2(fieldColor: matrixColour[8][5],),
                  FieldArea2(fieldColor: matrixColour[9][5],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][6],),
                  FieldArea2(fieldColor: matrixColour[1][6],),
                  FieldArea2(fieldColor: matrixColour[2][6],),
                  FieldArea2(fieldColor: matrixColour[3][6],),
                  FieldArea2(fieldColor: matrixColour[4][6],),
                  FieldArea2(fieldColor: matrixColour[5][6],),
                  FieldArea2(fieldColor: matrixColour[6][6],),
                  FieldArea2(fieldColor: matrixColour[7][6],),
                  FieldArea2(fieldColor: matrixColour[8][6],),
                  FieldArea2(fieldColor: matrixColour[9][6],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][7],),
                  FieldArea2(fieldColor: matrixColour[1][7],),
                  FieldArea2(fieldColor: matrixColour[2][7],),
                  FieldArea2(fieldColor: matrixColour[3][7],),
                  FieldArea2(fieldColor: matrixColour[4][7],),
                  FieldArea2(fieldColor: matrixColour[5][7],),
                  FieldArea2(fieldColor: matrixColour[6][7],),
                  FieldArea2(fieldColor: matrixColour[7][7],),
                  FieldArea2(fieldColor: matrixColour[8][7],),
                  FieldArea2(fieldColor: matrixColour[9][7],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][8],),
                  FieldArea2(fieldColor: matrixColour[1][8],),
                  FieldArea2(fieldColor: matrixColour[2][8],),
                  FieldArea2(fieldColor: matrixColour[3][8],),
                  FieldArea2(fieldColor: matrixColour[4][8],),
                  FieldArea2(fieldColor: matrixColour[5][8],),
                  FieldArea2(fieldColor: matrixColour[6][8],),
                  FieldArea2(fieldColor: matrixColour[7][8],),
                  FieldArea2(fieldColor: matrixColour[8][8],),
                  FieldArea2(fieldColor: matrixColour[9][8],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][9],),
                  FieldArea2(fieldColor: matrixColour[1][9],),
                  FieldArea2(fieldColor: matrixColour[2][9],),
                  FieldArea2(fieldColor: matrixColour[3][9],),
                  FieldArea2(fieldColor: matrixColour[4][9],),
                  FieldArea2(fieldColor: matrixColour[5][9],),
                  FieldArea2(fieldColor: matrixColour[6][9],),
                  FieldArea2(fieldColor: matrixColour[7][9],),
                  FieldArea2(fieldColor: matrixColour[8][9],),
                  FieldArea2(fieldColor: matrixColour[9][9],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][10],),
                  FieldArea2(fieldColor: matrixColour[1][10],),
                  FieldArea2(fieldColor: matrixColour[2][10],),
                  FieldArea2(fieldColor: matrixColour[3][10],),
                  FieldArea2(fieldColor: matrixColour[4][10],),
                  FieldArea2(fieldColor: matrixColour[5][10],),
                  FieldArea2(fieldColor: matrixColour[6][10],),
                  FieldArea2(fieldColor: matrixColour[7][10],),
                  FieldArea2(fieldColor: matrixColour[8][10],),
                  FieldArea2(fieldColor: matrixColour[9][10],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][11],),
                  FieldArea2(fieldColor: matrixColour[1][11],),
                  FieldArea2(fieldColor: matrixColour[2][11],),
                  FieldArea2(fieldColor: matrixColour[3][11],),
                  FieldArea2(fieldColor: matrixColour[4][11],),
                  FieldArea2(fieldColor: matrixColour[5][11],),
                  FieldArea2(fieldColor: matrixColour[6][11],),
                  FieldArea2(fieldColor: matrixColour[7][11],),
                  FieldArea2(fieldColor: matrixColour[8][11],),
                  FieldArea2(fieldColor: matrixColour[9][11],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][12],),
                  FieldArea2(fieldColor: matrixColour[1][12],),
                  FieldArea2(fieldColor: matrixColour[2][12],),
                  FieldArea2(fieldColor: matrixColour[3][12],),
                  FieldArea2(fieldColor: matrixColour[4][12],),
                  FieldArea2(fieldColor: matrixColour[5][12],),
                  FieldArea2(fieldColor: matrixColour[6][12],),
                  FieldArea2(fieldColor: matrixColour[7][12],),
                  FieldArea2(fieldColor: matrixColour[8][12],),
                  FieldArea2(fieldColor: matrixColour[9][12],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][13],),
                  FieldArea2(fieldColor: matrixColour[1][13],),
                  FieldArea2(fieldColor: matrixColour[2][13],),
                  FieldArea2(fieldColor: matrixColour[3][13],),
                  FieldArea2(fieldColor: matrixColour[4][13],),
                  FieldArea2(fieldColor: matrixColour[5][13],),
                  FieldArea2(fieldColor: matrixColour[6][13],),
                  FieldArea2(fieldColor: matrixColour[7][13],),
                  FieldArea2(fieldColor: matrixColour[8][13],),
                  FieldArea2(fieldColor: matrixColour[9][13],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][14],),
                  FieldArea2(fieldColor: matrixColour[1][14],),
                  FieldArea2(fieldColor: matrixColour[2][14],),
                  FieldArea2(fieldColor: matrixColour[3][14],),
                  FieldArea2(fieldColor: matrixColour[4][14],),
                  FieldArea2(fieldColor: matrixColour[5][14],),
                  FieldArea2(fieldColor: matrixColour[6][14],),
                  FieldArea2(fieldColor: matrixColour[7][14],),
                  FieldArea2(fieldColor: matrixColour[8][14],),
                  FieldArea2(fieldColor: matrixColour[9][14],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][15],),
                  FieldArea2(fieldColor: matrixColour[1][15],),
                  FieldArea2(fieldColor: matrixColour[2][15],),
                  FieldArea2(fieldColor: matrixColour[3][15],),
                  FieldArea2(fieldColor: matrixColour[4][15],),
                  FieldArea2(fieldColor: matrixColour[5][15],),
                  FieldArea2(fieldColor: matrixColour[6][15],),
                  FieldArea2(fieldColor: matrixColour[7][15],),
                  FieldArea2(fieldColor: matrixColour[8][15],),
                  FieldArea2(fieldColor: matrixColour[9][15],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][16],),
                  FieldArea2(fieldColor: matrixColour[1][16],),
                  FieldArea2(fieldColor: matrixColour[2][16],),
                  FieldArea2(fieldColor: matrixColour[3][16],),
                  FieldArea2(fieldColor: matrixColour[4][16],),
                  FieldArea2(fieldColor: matrixColour[5][16],),
                  FieldArea2(fieldColor: matrixColour[6][16],),
                  FieldArea2(fieldColor: matrixColour[7][16],),
                  FieldArea2(fieldColor: matrixColour[8][16],),
                  FieldArea2(fieldColor: matrixColour[9][16],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][17],),
                  FieldArea2(fieldColor: matrixColour[1][17],),
                  FieldArea2(fieldColor: matrixColour[2][17],),
                  FieldArea2(fieldColor: matrixColour[3][17],),
                  FieldArea2(fieldColor: matrixColour[4][17],),
                  FieldArea2(fieldColor: matrixColour[5][17],),
                  FieldArea2(fieldColor: matrixColour[6][17],),
                  FieldArea2(fieldColor: matrixColour[7][17],),
                  FieldArea2(fieldColor: matrixColour[8][17],),
                  FieldArea2(fieldColor: matrixColour[9][17],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][18],),
                  FieldArea2(fieldColor: matrixColour[1][18],),
                  FieldArea2(fieldColor: matrixColour[2][18],),
                  FieldArea2(fieldColor: matrixColour[3][18],),
                  FieldArea2(fieldColor: matrixColour[4][18],),
                  FieldArea2(fieldColor: matrixColour[5][18],),
                  FieldArea2(fieldColor: matrixColour[6][18],),
                  FieldArea2(fieldColor: matrixColour[7][18],),
                  FieldArea2(fieldColor: matrixColour[8][18],),
                  FieldArea2(fieldColor: matrixColour[9][18],),
                ],),
              Column(
                children: [
                  FieldArea2(fieldColor: matrixColour[0][19],),
                  FieldArea2(fieldColor: matrixColour[1][19],),
                  FieldArea2(fieldColor: matrixColour[2][19],),
                  FieldArea2(fieldColor: matrixColour[3][19],),
                  FieldArea2(fieldColor: matrixColour[4][19],),
                  FieldArea2(fieldColor: matrixColour[5][19],),
                  FieldArea2(fieldColor: matrixColour[6][19],),
                  FieldArea2(fieldColor: matrixColour[7][19],),
                  FieldArea2(fieldColor: matrixColour[8][19],),
                  FieldArea2(fieldColor: matrixColour[9][19],),
                ],),

            ],
          ),
        ),
      ],
    );
  }
}