import 'package:first_assignment/view/areaofcircle_view.dart';
import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/dashboard_view.dart';
import 'package:first_assignment/view/simpleinterest_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Screen App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}