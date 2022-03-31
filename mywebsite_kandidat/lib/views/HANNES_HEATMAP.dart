
import 'package:flutter/material.dart';

var coordinatesX = [12,24,5,7,3,29,15];
var coordinatesY = [15,14,24,28,4,8,25];

class HannesHeatmap extends StatelessWidget {
  HannesHeatmap({Key? key}) : super(key: key);


  var lengthCoordinates = coordinatesX.length;

  var section11 = 0;
  var section11Percent = 0.0;
  var i = 0;



  @override
  Widget build(BuildContext context) {
    while (i < lengthCoordinates) {
      if (coordinatesX[i] < 20 && coordinatesY[i] < 20) {
        section11++;
        i++;
      }
      else {
        i++;
      }
    }

    section11Percent = (section11/lengthCoordinates);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 210,
          width: 420,
          child:
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.orange,
                      child: Text('$section11, $section11Percent'),
                      ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: (section11Percent < 1)
                        ? Colors.greenAccent
                          : Colors.red
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.green,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.purpleAccent,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.black45,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ],
            ),
        ),
      ],
    );
  }
}