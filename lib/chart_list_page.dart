import 'package:flutter/material.dart';
import 'package:visualization_demo/bar_chart_page.dart';

class ChartListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Charts')),
        body: ListView(children: [
          ListTile(
              title: Text('Bar Chart'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => BarChartPage())))
        ]));
  }
}
