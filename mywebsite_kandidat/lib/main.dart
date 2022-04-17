import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/locator.dart';
import 'package:mywebsite_kandidat/views/layout_template/layout_template.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDICATE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        )),
      home: const LayoutTemplate()
    );
  }
}
