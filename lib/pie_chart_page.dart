import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class Item {
  final String category;
  final double value;

  Item(this.category, this.value);
}

class PieChartPage extends StatelessWidget {
  final List<Series<Item, String>> seriesList = [
    Series(
        id: 'Series 1',
        data: [
          Item('Type A', 0.64),
          Item('Type B', 0.32),
          Item('Type C', 0.04)
        ],
        domainFn: (it, _) => it.category,
        measureFn: (it, _) => it.value,
        labelAccessorFn: (it, _) => it.category),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pie Chart'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: PieChart(
          seriesList,
          animate: true,
          defaultRenderer: ArcRendererConfig(
              arcWidth: 96, arcRendererDecorators: [ArcLabelDecorator()]),
        ),
      ),
    );
  }
}
