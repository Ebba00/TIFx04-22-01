import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EpisodesHeatmap extends StatelessWidget {
  const EpisodesHeatmap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

          return SizedBox(
            width: 350,
            child: Image.asset('assets/heatmap.jpg'),
          );
        }
  }

