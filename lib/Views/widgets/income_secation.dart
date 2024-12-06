import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/IncomeDetails.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/customebackgroundcontainer.dart';
import 'package:projectresponsive2/Views/widgets/icomeChart.dart';
import 'package:projectresponsive2/utils/size_config.dart';

class IncomeSecation extends StatelessWidget {
  const IncomeSecation({super.key});

  @override
  Widget build(BuildContext context) {
    return const customBackgroundcontainer(
      child: Column(
        children: [
          HeadertheSection(title: 'Income', numberoficonshow: 1),
          incomebody()
        ],
      ),
    );
  }
}

class incomebody extends StatelessWidget {
  const incomebody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width < SizeConfig.tablet
        ? const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: incomedetails()),
            ],
          )
        : const Expanded(child: Padding(
          padding: EdgeInsets.all(16),
          child: IncomeChart2(),
        ),);
  }
}
