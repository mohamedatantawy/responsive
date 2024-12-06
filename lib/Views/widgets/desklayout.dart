import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/MyCardsecatiponAndtransacationHistroy.dart';
import 'package:projectresponsive2/Views/widgets/allexpancessandqyickinvioce.dart';
import 'package:projectresponsive2/Views/widgets/customDrawer.dart';
import 'package:projectresponsive2/Views/widgets/income_secation.dart';

class Desklayout extends StatelessWidget {
  const Desklayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Customdrawer()),
        Expanded(
          flex: 3,
          child: CustomScrollView(

            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                children: [
                  Expanded(
                    flex :2,
                    child: AllexpancessAndQuickinVoice()),
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
                ),
              ),
            ] ),
        ),
      ],
    );
  }
}
