import 'package:flutter/material.dart';
import 'package:projectresponsive2/models/transactionModel.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.transactionmodel,
  });
  final Transactionmodel transactionmodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: 12),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transactionmodel.tilte,
          //'Cash Withdrawal',
          style: AppStyles.stylesemibold20,
        ),
        subtitle: Text(
          transactionmodel.date,
          // '13 Apirl 2022',
          style: AppStyles.styleregular14,
        ),
        trailing: Text(
          transactionmodel.price,
          style: AppStyles.stylesemibold24.copyWith(
            color: transactionmodel.isRed ? Colors.red : null,
          ),
        ),
      ),
    );
  }
}
