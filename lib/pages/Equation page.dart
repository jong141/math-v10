import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'EquationPage.dart';

class Equationpage extends StatefulWidget {
  @override
  _EquationpageState createState() => _EquationpageState();
}

class _EquationpageState extends State<Equationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('EQ page'),
      ),
      body: EquationPage(),
    );
  }
}