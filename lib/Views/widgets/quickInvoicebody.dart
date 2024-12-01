import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/customebackgroundcontainer.dart';
import 'package:projectresponsive2/Views/widgets/latest_transacation.dart';

class Quickinvoicebody extends StatelessWidget {
  const Quickinvoicebody({super.key});

  @override
  Widget build(BuildContext context) {
    return const customBackgroundcontainer(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        all_expancessHeader(title: 'Quick Invoice', numberoficonshow: 1),
        LatestTransacation(),
              ],
            ));
  }
}
