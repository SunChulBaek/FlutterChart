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
      data: PieData(
        List.of([
          PieDataSet(entries: List.of([
            PieEntry(14),
            PieEntry(14),
            PieEntry(34),
            PieEntry(38)
          ]))
        ])
      ),
    ),
  );
}