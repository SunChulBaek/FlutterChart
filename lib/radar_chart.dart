import 'dart:math';

import 'package:flutter/material.dart';

import 'utils.dart';

class RadarChart extends StatefulWidget {
  RadarChart({
    this.lineWidth = 0.0,
    this.lineColor = Colors.black,
    super.key
  });

  double lineWidth;
  Color lineColor;

  @override
  State<StatefulWidget> createState() => _RadarChartState();
}

class _RadarChartState extends State<RadarChart> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadarChartCustomPaint(
        lineWidth: widget.lineWidth,
        lineColor: widget.lineColor
      ),
    );
  }
}

class _RadarChartCustomPaint extends CustomPainter {
  static const _offsetAngle = 90;

  _RadarChartCustomPaint({
    required this.lineWidth,
    required this.lineColor,
  });

  final double lineWidth;
  final Color lineColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2;
    const axisCount = 5;
    const guideLineCount = 5;

    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));

    // 가이드라인
    for (var i = 1; i <= guideLineCount; i++) {
      for (var j = 0; j < axisCount; j++) {
        final thisRadius = radius * i / guideLineCount;
        final startAngle = _offsetAngle - 360 / axisCount * j;
        final endAngle = _offsetAngle - 360 / axisCount * (j + 1);
        // P1
        final x1 = center.dx + thisRadius * cosDeg(startAngle);
        final y1 = center.dy - thisRadius * sinDeg(startAngle);
        // P2
        final x2 = center.dx + thisRadius * cosDeg(endAngle);
        final y2 = center.dy - thisRadius * sinDeg(endAngle);

        canvas.drawLine(
          Offset(x1, y1),
          Offset(x2, y2),
          Paint()
            ..strokeWidth = lineWidth
            ..color = lineColor
        );
      }
    }

    // 축
    for (var i = 0; i < axisCount; i++) {
      final startAngle = _offsetAngle - 360 / axisCount * i;
      final x1 = center.dx + radius * cosDeg(startAngle);
      final y1 = center.dy - radius * sinDeg(startAngle);

      canvas.drawLine(
        Offset(x1, y1),
        center,
        Paint()
          ..strokeWidth = lineWidth
          ..color = lineColor
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}