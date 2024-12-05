import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/Dotindiecator.dart';
import 'package:projectresponsive2/Views/widgets/MyCardsecatiponAndtransacationHistroy.dart';
import 'package:projectresponsive2/Views/widgets/allexpancessandqyickinvioce.dart';
import 'package:projectresponsive2/Views/widgets/customDrawer.dart';
import 'package:projectresponsive2/Views/widgets/income_secation.dart';
import 'package:projectresponsive2/Views/widgets/mycard.dart';

class Desklayout extends StatelessWidget {
  const Desklayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Customdrawer()),
        AllexpancessAndQuickinVoice(),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Mycardsecatiponandtransacationhistroy(),
              Expanded(child: IncomeSecation()),
            ],
          ),
        ),
      ],
    );
  }
}
