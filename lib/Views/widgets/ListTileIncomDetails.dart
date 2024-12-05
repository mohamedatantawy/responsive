
import 'package:flutter/material.dart';
import 'package:projectresponsive2/models/incomemodels.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class ListtileIncome extends StatelessWidget {
  const ListtileIncome({
    super.key,
    required this.income,
  });

  final Incomemodels income;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape:const OvalBorder(),
            color: income.color),
      ),
      title: Text(
        income.name,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        income.num,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
