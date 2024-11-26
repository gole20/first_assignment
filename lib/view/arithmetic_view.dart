import 'package:first_assignment/view/areaofcircle_view.dart';
import 'package:first_assignment/view/simpleinterest_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ArithmeticScreen()));
}

class ArithmeticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations"),
      ),
      drawer: Drawer(
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
              title: Text('Area of Circle'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Addition: ${10 + 5}"),
            Text("Subtraction: ${10 - 5}"),
            Text("Multiplication: ${10 * 5}"),
            Text("Division: ${10 / 5}"),
          ],
        ),
      ),
    );
  }
}