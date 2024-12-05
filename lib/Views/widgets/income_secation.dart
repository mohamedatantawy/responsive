import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/IncomeDetails.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/customebackgroundcontainer.dart';
import 'package:projectresponsive2/Views/widgets/icomeChart.dart';

class IncomeSecation extends StatelessWidget {
  const IncomeSecation({super.key});

  @override
  Widget build(BuildContext context) {
    return const customBackgroundcontainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeadertheSection(title: 'Income', numberoficonshow: 1),
          Expanded(
            child: Row(
           
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: incomedetails()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
