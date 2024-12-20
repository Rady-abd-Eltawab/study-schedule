import 'package:flutter/material.dart';
import 'package:q/hom_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StudyPal',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(););
  }
}
