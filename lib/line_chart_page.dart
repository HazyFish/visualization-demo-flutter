import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';

class LineChartPage extends StatelessWidget {
  final List<Series<Point<num>, int>> seriesList = [
    Series(
        id: 'A',
        data: Iterable.generate(9, (x) => Point(x, x * x)).toList(),
        domainFn: (point, _) => point.x,
        measureFn: (point, _) => point.y),
    Series(
        id: 'B',
        data: Iterable.generate(8, (x) => Point(x + 1, 64 / (x + 1))).toList(),
        domainFn: (point, _) => point.x,
        measureFn: (point, _) => point.y),
    Series(
        id: 'C',
        data: Iterable.generate(9, (x) => Point(x, 4 * x + 16)).toList(),
        domainFn: (point, _) => point.x,
        measureFn: (point, _) => point.y),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart'),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: LineChart(
            seriesList,
            animate: true,
            behaviors: [SeriesLegend()],
          )),
    );
  }
}
