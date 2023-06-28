import 'package:flutter/material.dart';
import 'package:flutter_chart/ui/main_item.dart';
import 'package:ssun_chart/radar_chart.dart';

class MainRadarItem extends MainItem {

  @override
  Widget itemContent() => SizedBox(
    width: 200,
    height: 200,
    child: RadarChart(
      bgColor: const Color(0xFFf0f0f0),
      webLineWidth: 1,
      webLineColor: Colors.grey.withOpacity(0.5),
      markerSize: 2,
      xLabels: List.of(["김환용", "이우경", "서기웅", "김정현", "박종현"]),
      yDrawLabels: true,
      data: RadarData(
        List.of([
          RadarDataSet(
            color: Colors.red,
            fillColor: Colors.red.withOpacity(0.3),
            lineWidth: 1.2,
            entries: List.of([
              RadarEntry(70),
              RadarEntry(80),
              RadarEntry(90),
              RadarEntry(30),
              RadarEntry(50),
            ]
            )),
          RadarDataSet(
            color: Colors.blue,
            fillColor: Colors.blue.withOpacity(0.3),
            lineWidth: 1.2,
            entries: List.of([
              RadarEntry(30),
              RadarEntry(50),
              RadarEntry(70),
              RadarEntry(80),
              RadarEntry(90),
            ]
            )),
          RadarDataSet(
            color: Colors.yellow,
            fillColor: Colors.yellow.withOpacity(0.3),
            lineWidth: 1.2,
            entries: List.of([
              RadarEntry(50),
              RadarEntry(70),
              RadarEntry(80),
              RadarEntry(90),
              RadarEntry(70),
            ]
            )),
        ])
      ),
    ),
  );
}