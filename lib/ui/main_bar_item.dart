import 'package:flutter/material.dart';
import 'package:flutter_chart/ui/main_item.dart';
import 'package:ssun_chart/bar_chart.dart';

class MainBarItem extends MainItem {
  @override
  Widget itemContent() => SizedBox(
    width: 200,
    height: 200,
    child: BarChart(
      bgColor: const Color(0xFFf0f0f0),
      data: BarData(
        List.of([
          BarDataSet(
            color: Colors.red.shade300,
            entries: List.of([
              BarEntry(50),
              BarEntry(40),
              BarEntry(70),
              BarEntry(90),
              BarEntry(30),
              BarEntry(70),
            ])
          ),
          BarDataSet(
            color: Colors.yellow.shade300,
            entries: List.of([
              BarEntry(30),
              BarEntry(50),
              BarEntry(40),
              BarEntry(70),
              BarEntry(90),
              BarEntry(80),
            ])
          ),
          BarDataSet(
            color: Colors.blue.shade300,
            entries: List.of([
              BarEntry(40),
              BarEntry(70),
              BarEntry(90),
              BarEntry(30),
              BarEntry(50),
              BarEntry(80),
            ])
          ),
        ])
      ),
    )
  );
}