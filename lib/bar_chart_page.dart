import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';

class BarChartPage extends StatelessWidget {
  final List<Series<Point<int>, String>> seriesList = [
    Series(
        id: 'A',
        data: [Point(1, 16), Point(2, 32), Point(3, 64)],
        domainFn: (point, _) => point.x.toString(),
        measureFn: (point, _) => point.y),
    Series(
        id: 'B',
        data: [Point(1, 16), Point(2, 16), Point(3, 16)],
        domainFn: (point, _) => point.x.toString(),
        measureFn: (point, _) => point.y),
    Series(
        id: 'C',
        data: [Point(1, 32), Point(2, 16), Point(3, 8)],
        domainFn: (point, _) => point.x.toString(),
        measureFn: (point, _) => point.y),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bar Chart'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: BarChart(seriesList,
              animate: true, barGroupingType: BarGroupingType.stacked),
        ));
  }
}
