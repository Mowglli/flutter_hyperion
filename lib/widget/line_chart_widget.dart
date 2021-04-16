import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../data/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            titlesData: LineTitles.getTitleData(),
            minX: 0,
            maxX: 7,
            minY: 0,
            maxY: 8,
            lineBarsData: [
              LineChartBarData(
                spots: [FlSpot(0, 20.5), FlSpot(2, 2), FlSpot(4, 4)],
                colors: [Colors.white70, Colors.white],
                barWidth: 3,
              )
            ]),
      );
}
