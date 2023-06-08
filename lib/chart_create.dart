import 'package:flutter/material.dart';
import 'pie_chart.dart';
import 'line_chart.dart';

class ChartPage extends StatelessWidget {
  List<double> points = [50, 90, 1003, 500, 150, 120, 200, 80];

  List<String> labels = [
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              /*
              Container(
                child: CustomPaint(
                  size: Size(150, 150),
                  painter: LineCharts(points: points, pointSize: 5.0, pointColor: Colors.pinkAccent, lineColor: Colors.pinkAccent, lineWidth: 2.0),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 4.0)),
*/
      Container(
                child: CustomPaint(
                  size: Size(150, 150),
                  painter: PieCharts(
                      percentage: 15,
                      textScaleFactor: 1.5,
                      textColor: Colors.blueGrey
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}