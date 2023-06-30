import 'package:flutter/material.dart';
import 'package:flutter_chart/ui/main_item.dart';
import 'package:ssun_chart/pie_chart.dart';

class MainPieItem extends MainItem {
  @override
  Widget itemContent() => SizedBox(
    width: 200,
    height: 200,
    child: PieChart(
      bgColor: const Color(0xFFf0f0f0),
      usePercentValues: true,
      centerText: 'Quarterly\nRevenue',
      centerTextColor: Colors.blue,
      centerTextSize: 11,
      drawCenterText: true,
      drawHoleEnabled: true,
      holeRadius: 30,
      transparentCircleRadius: 37,
      entryLabelColor: Colors.white,
      data: PieData(
        List.of([
          PieDataSet(
            colors: List.of([
              Colors.green.shade200,
              Colors.yellow.shade200,
              Colors.orange.shade200,
              Colors.lightBlue.shade200,
            ]),
            entries: List.of([
              PieEntry('Quarter 1', 14),
              PieEntry('Quarter 2', 14),
              PieEntry('Quarter 3', 34),
              PieEntry('Quarter 4', 38),
            ]))
        ])
      ),
    ),
  );
}