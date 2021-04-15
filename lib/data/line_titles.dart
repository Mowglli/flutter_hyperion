import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles{
  static getTitleData(){
    final style = TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    return FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 40,
        getTextStyles: (_) =>style,
        getTitles: (value) {
          value=value%14;
          switch(value.toInt()){
    case 1:
    return 'MON';
    case 2:
    return 'TUE';
    case 3:
    return 'WEN';
    case 4:
    return 'TUE';
    case 5:
    return 'FRI';
    case 6:
      return 'SAT';
      case 7:
        return 'SUN';
    }
    return '';

          },
    margin: 7,
      ),
      leftTitles: SideTitles(showTitles: false),
      rightTitles: SideTitles(
        showTitles: true,
        getTextStyles: (_) => style,
        getTitles: (value) {
          switch (value.toInt()){
            case 1:
              return '1000';
            case 3:
              return '3000';
            case 5:
              return '5000';
          }
          return '';
        },
        reservedSize: 60,
        margin:  24,
      )
    );
  }
}