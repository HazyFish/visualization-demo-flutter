import 'dart:math';

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class Item extends Point<double> {
  final double radius;

  Item(double x, double y, this.radius) : super(x, y);
}

class ScatterPlotChartPage extends StatelessWidget {
  final List<Series<Item, num>> seriesList = [
    Series(
        id: 'A',
        data: [
          Item(16, 12, 16),
          Item(24, 16, 32),
          Item(32, 24, 16),
          Item(14, 15, 12),
          Item(24, 8, 32),
          Item(12, 8, 20),
        ],
        domainFn: (it, _) => it.x,
        measureFn: (it, _) => it.y,
        radiusPxFn: (it, _) => it.radius),
    Series(
        id: 'B',
        data: [
          Item(8, 24, 12),
          Item(6, 16, 16),
          Item(12, 12, 20),
          Item(16, 18, 16),
          Item(18, 14, 10),
        ],
        domainFn: (it, _) => it.x,
        measureFn: (it, _) => it.y,
        radiusPxFn: (it, _) => it.radius),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scatter Plot Chart'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ScatterPlotChart(seriesList, animate: true),
      ),
    );
  }
}
