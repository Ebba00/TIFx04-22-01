import 'package:flutter/material.dart';
import '../../routing/route_names.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';
import 'heatmap.dart';

var row = 90;
var col = 50;
final List<List<int>> matrix2 = new List.generate(row, (i) =>
    List.generate(col, (j) => 0));
final List<List<int>> matrix3 = randomMatrix(matrix2);


class StatsView extends StatelessWidget {
  const StatsView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Container(
            height: 300,
            width: 580,
            decoration: BoxDecoration(color: Colors.grey[100],),
            child: Image.asset('FloorballField.png')),
            Center(child: Text(matrix3.toString())),
          ],
      );
  }
}