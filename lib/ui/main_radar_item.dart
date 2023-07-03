import 'package:flutter/material.dart';
import 'package:flutter_chart/ui/main_item.dart';
import 'package:intl/intl.dart';
import 'package:ssun_chart/radar_chart.dart';
import 'package:ssun_chart/utils/value_formatter.dart';

class MainRadarItem extends MainItem {

  @override
  Widget itemContent() => SizedBox(
    width: 200,
    height: 200,
    child: RadarChart(
      bgColor: const Color(0xFFf0f0f0),
      webLineWidth: 1,
      webLineColor: Colors.grey.withOpacity(0.5),
      xDrawLabels: true,
      xLabels: List.of([
        "Party A",
        "Party B",
        "Party C",
        "Party D",
        "Party E",
        "Party F",
        "Party G",
        "Party H",
        "Party I",
      ]),
      yMaximum: 240,
      yValueFormatter: DollarValueFormatter(),
      yDrawLabels: true,
      data: RadarData(
        List.of([
          RadarDataSet(
            color: const Color(0xFFaeea00),
            fillColor: const Color(0xFFaeea00).withOpacity(0.3),
            lineWidth: 1.2,
            entries: List.of([
              RadarEntry(210),
              RadarEntry(90),
              RadarEntry(150),
              RadarEntry(140),
              RadarEntry(160),
              RadarEntry(150),
              RadarEntry(100),
              RadarEntry(190),
              RadarEntry(200),
            ])
          ),
          RadarDataSet(
            color: const Color(0xFFff4081),
            fillColor: const Color(0xFFff4081).withOpacity(0.3),
            lineWidth: 1.2,
            entries: List.of([
              RadarEntry(120),
              RadarEntry(160),
              RadarEntry(115),
              RadarEntry(115),
              RadarEntry(210),
              RadarEntry(120),
              RadarEntry(220),
              RadarEntry(100),
              RadarEntry(220),
            ])
          ),
        ])
      ),
    ),
  );
}

class DollarValueFormatter extends ValueFormatter {
  @override
  String format(double value) => "${NumberFormat("#,##0").format(value)} \$";
}