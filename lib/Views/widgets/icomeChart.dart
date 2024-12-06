
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1
  
    , child: PieChart(getdatachart()));
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

class IncomeChart2 extends StatefulWidget {
  const IncomeChart2({super.key});

  @override
  State<IncomeChart2> createState() => _IncomeChart2State();
}



class _IncomeChart2State extends State<IncomeChart2> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1
  
    , child: PieChart(getdatachart()));
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
         title: active ==0? 'Design service':"40%",
           titlePositionPercentageOffset:active ==0? 1.4:null ,
         titleStyle: AppStyles.styleRegular16(context).copyWith(
          color:active ==0? kprimaycolor: Colors.white,
         ),
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            radius: active == 1 ? 60 : 50,
             title: active ==1? 'Design product':"25%",
           titlePositionPercentageOffset:active ==1? 2.1:null ,
         titleStyle: AppStyles.styleRegular16(context).copyWith(
          color:active ==1? kprimaycolor: Colors.white,
         ),
            value: 25,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            radius: active == 2 ? 60 : 50,
              title: active ==2? 'Product royalti':"20%",
           titlePositionPercentageOffset:active ==2? 1.3:null ,
         titleStyle: AppStyles.styleRegular16(context).copyWith(
          color:active ==2? kprimaycolor: Colors.white,
         ),
            
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            radius: active == 3 ? 60 : 50,
             title: active ==3? 'Other':"22%",
           titlePositionPercentageOffset:active ==3? 1.5:null ,
         titleStyle: AppStyles.styleRegular16(context).copyWith(
          color:active ==3? kprimaycolor: Colors.black,
         ),
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
