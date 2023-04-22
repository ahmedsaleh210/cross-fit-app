import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/models/chart_models.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Calories', 20, HexColor('#AF17A5')),
      ChartData('Proteins', 35, HexColor('#038B9D')),
      ChartData('Carbs', 45, HexColor('#2F2E41')),
    ];
    return SizedBox(
      height: 200.h,
      child: SfCircularChart(
          tooltipBehavior: TooltipBehavior(
            enable: true,
            format: 'point.x : point.y%',
            color: Colors.white,
            opacity: 0.8,
            header: '',
            textStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),

          series: <CircularSeries>[
            PieSeries<ChartData, String>(
              strokeWidth: 2,
              strokeColor: Colors.white,
              explode: true,
              explodeGesture: ActivationMode.singleTap,
              explodeOffset: '10%',
              dataSource: chartData,
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              dataLabelMapper: (ChartData data, _) => '${data.y}%',
              radius: '100%',
              dataLabelSettings: const DataLabelSettings(
                textStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                isVisible: true,
                labelIntersectAction: LabelIntersectAction.none,
              ),
            )
          ]),
    );
  }
}
