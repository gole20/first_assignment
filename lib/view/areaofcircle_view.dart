import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/simpleinterest_view.dart';
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double radius = 7;
    double area = 3.14 * radius * radius;

    return Scaffold(
      appBar: AppBar(title: Text("Area of Circle")),
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
          "Radius: $radius\nArea: $area",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
