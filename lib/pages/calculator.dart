import 'package:flutter/material.dart';
import 'dart:math';

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  double a = 0, b = 0, c = 0, discr = 0, root1 = 0, root2 = 0, root3 = 0, root4 = 0,res = 0, real = 0, imag = 0, imag2 = 0;//res = Result...................
  final formKey = GlobalKey<FormState>();
  TextEditingController t1 = TextEditingController(text: '');
  TextEditingController t2 = TextEditingController(text: '');
  TextEditingController t3 = TextEditingController(text: '');

  doGeneralQuadraticFormula() {

    setState(() {
      a = double.parse(t1.text);
      b = double.parse(t2.text);
      c = double.parse(t3.text);
      discr = b * b - 4 * a * c;
      real = -b / (2 * a);
      imag = sqrt(-discr) / (2 * a);
      imag2 = (-1 * imag);


      if (discr > 0) {
        root1 = ((-1 * b) + sqrt(discr)) / (2 * a);
        root2 = ((-1 * b) - sqrt(discr)) / (2 * a);
        root3 = 0;
        root4 = 0;
      }
      else{
        root1 = real;
        root2 = real;
        root3 = imag2;
        root4 = imag;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Calculator',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          key: formKey,
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'X1 = $root1 , $root3 i',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'X2 = $root2 , $root4 i',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 20, color: Colors.blue[900]),



              Row( crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('a:  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue[900]),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'coefficent of x²'
                      ),
                      controller: t1,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),


              Row( crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('b:  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue[900]),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'coefficent of x'
                      ),
                      controller: t2,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),



              Row( crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('c:  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue[900]),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'the constant'
                      ),
                      controller: t3,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      doGeneralQuadraticFormula();
                      print('$root1 and $root2');
                    },
                    child: Text('SUBMIT',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Yass.ttf',
                      ),
                    ),

                  ),
//                  SizedBox(height: 90),
                ],
              ),

              Divider(height: 30, color: Colors.blue[900]),


              Column(
                mainAxisAlignment: MainAxisAlignment.end ,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Quadratic equations appear in the format',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue[900]),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Text('ax² + bx + c = 0',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.blue[900]),
                      textAlign: TextAlign.center),
                  Text('where a, b and c are real numbers and a not equal to 0.',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue[900]),
                      textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}