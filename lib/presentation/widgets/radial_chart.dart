import 'package:flutter/material.dart';

import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color neutral = Color(0xFFEDEEF1);
}

class RadialChartWidget extends StatelessWidget {
  final double value;
  final double maxValue;
  final double size;
  final Widget? centerWidget;

  const RadialChartWidget({
    super.key,
    required this.value,
    required this.maxValue,
    this.size = 200.0,
    this.centerWidget,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (value / maxValue) * 100;
    bool isFull = value == maxValue;

    return SizedBox(
      width: size,
      height: size,
      child: Transform.rotate(
        angle: 180 * pi / 180,
        child: SfCircularChart(
          series: <CircularSeries>[
            RadialBarSeries<ChartData, String>(
              dataSource: [
                ChartData('Progress', percentage, _AppColors.primary),
              ],
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.label,
              yValueMapper: (ChartData data, _) => data.value,
              maximumValue: 100,
              innerRadius: '85%',
              radius: '100%',
              cornerStyle:
                  isFull ? CornerStyle.bothFlat : CornerStyle.bothCurve,
              trackColor: _AppColors.neutral,
              trackOpacity: 1.0,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
          annotations: <CircularChartAnnotation>[
            CircularChartAnnotation(
              widget: SizedBox(
                width: size * 0.4,
                height: size * 0.4,
                child: FittedBox(
                  child: Transform.rotate(
                      angle: 180 * pi / 180,
                      child: centerWidget ?? Container()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String label;
  final double value;
  final Color color;

  ChartData(this.label, this.value, this.color);
}
