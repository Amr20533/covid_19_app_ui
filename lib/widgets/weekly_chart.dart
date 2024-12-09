import 'package:covid_19_app/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class weeklyChart extends StatelessWidget {
  const weeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarCharts(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          gridData:FlGridData(show:false),
        ),
      ),
    );
  }
  getBarCharts(){
    List<double> barChartData =[6,10,8,7,10,15,9];
    List<BarChartGroupData> barChartGroups=[];
    barChartData.asMap().forEach((i, value)=>barChartGroups.add(
      BarChartGroupData(
        x:i,
        barRods:[
          BarChartRodData(
              toY:value,
              color:i==4?kPrimaryColor:kInactiveChartColor,width:16),
        ],
      ),
    ));
    return barChartGroups;
  }
  String getWeek(double value){
    switch(value.toInt()){
      case 0:
        return 'Mon';
      case 1:
        return 'Tue';
      case 3:
        return 'Wen';
      case 4:
        return 'Tur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }
}