import 'package:first_assignment/view/areaofcircle_view.dart';
import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double principal = 1000;
    double rate = 5;
    int time = 2;
    double interest = (principal * rate * time) / 100;

    return Scaffold(
      appBar: AppBar(title: Text("Simple Interest")),
       drawer: Drawer( // Use a proper Drawer widget
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Arithmetic Operations'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArithmeticScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Area of circle'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AreaOfCircleScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Simple Interest'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleInterestScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Principal: $principal\nRate: $rate%\nTime: $time years\nSimple Interest: $interest",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
