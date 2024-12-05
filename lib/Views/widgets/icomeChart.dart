
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getdatachart()));
  }

  PieChartData getdatachart() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            active = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            radius: active == 0 ? 60 : 50,
            showTitle: false,
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            radius: active == 1 ? 60 : 50,
            showTitle: false,
            value: 25,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            radius: active == 2 ? 60 : 50,
            showTitle: false,
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            radius: active == 3 ? 60 : 50,
            showTitle: false,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
    // }

    // PieChartSectionData custompiechartdata({
    //  required  int active,
    //   required double num,
    //   required Color color,
    // }) {
    //   return PieChartSectionData(
    //     value: num,
    //     color: color,
    //     showTitle: false,
    //     radius: active==,
    //   );
  }
}
