import 'package:flutter/material.dart';
import 'package:visualization_demo/bar_chart_page.dart';
import 'package:visualization_demo/line_chart_page.dart';
import 'package:visualization_demo/pie_chart_page.dart';
import 'package:visualization_demo/scatter_plot_chart_page.dart';

class ChartListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Charts')),
        body: ListView(children: [
          ListTile(
              title: Text('Bar Chart'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => BarChartPage()))),
          ListTile(
            title: Text('Line Chart'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => LineChartPage())),
          ),
          ListTile(
            title: Text('Pie Chart'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => PieChartPage())),
          ),
          ListTile(
            title: Text('Scatter Plot Chart'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => ScatterPlotChartPage())),
          )
        ]));
  }
}
