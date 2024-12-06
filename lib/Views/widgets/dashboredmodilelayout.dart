
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/MyCardsecatiponAndtransacationHistroy.dart';
import 'package:projectresponsive2/Views/widgets/allexpancessandqyickinvioce.dart';
import 'package:projectresponsive2/Views/widgets/income_secation.dart';

class dashboerdmobillayout extends StatelessWidget {
  const dashboerdmobillayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllexpancessAndQuickinVoice(),
          Mycardsecatiponandtransacationhistroy(),
          IncomeSecation(),
        ],
      ),
    );
  }
}