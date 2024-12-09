import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineReportChart extends StatelessWidget {
  const LineReportChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.2,
      child:LineChart(
          LineChartData(
              borderData:FlBorderData(show:false),
              gridData:const FlGridData(show:false),
              titlesData:const FlTitlesData(show:false),
              lineBarsData:[
                LineChartBarData(
                    isCurved:true,
                    spots:getSpot(),
                    dotData:const FlDotData(show: false),
                  belowBarData: BarAreaData(show: false),
                ),
              ]
          )
      ),
    );
  }
  List<FlSpot> getSpot(){
    return const [
      FlSpot(0,.5),
      FlSpot(1,1.5),
      FlSpot(2,.5),
      FlSpot(3,.7),
      FlSpot(4,.2),
      FlSpot(5,2),
      FlSpot(6,1.5),
      FlSpot(7,1.7),
      FlSpot(8,1),
      FlSpot(9,2.8),
      FlSpot(10,2.5),
      FlSpot(11,2.65),
    ];
  }
}
