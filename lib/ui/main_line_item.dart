import 'package:flutter/material.dart';
import 'package:flutter_chart/ui/main_item.dart';
import 'package:ssun_chart/line_chart.dart';
import 'package:ssun_chart/utils/value_formatter.dart';

class MainLineItem extends MainItem {
  @override
  Widget itemContent() => SizedBox(
    width: 200,
    height: 200,
    child: LineChart(
      bgColor: const Color(0xFFf0f0f0),
      drawMarker: true,
      yValueFormatter: DecimalFormatter(),
      data: LineData(
        List.of([
          LineDataSet(
            color: Colors.red,
            lineWidth: 1.2,
            entries: List.of([
              LineEntry(50),
              LineEntry(40),
              LineEntry(70),
              LineEntry(90),
              LineEntry(30),
              LineEntry(70),
            ])
          ),
          LineDataSet(
            color: Colors.blue,
            lineWidth: 1.2,
            entries: List.of([
              LineEntry(30),
              LineEntry(50),
              LineEntry(40),
              LineEntry(70),
              LineEntry(90),
              LineEntry(80),
            ])
          )
        ])
      ),
    )
  );
}