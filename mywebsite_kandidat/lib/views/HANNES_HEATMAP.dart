import 'package:flutter/material.dart';

class HannesHeatmap extends StatelessWidget {
  const HannesHeatmap({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                      ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 70,
                      width: 140,
                      color: Colors.red,
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