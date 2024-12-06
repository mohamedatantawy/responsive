
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/ListTileIncomDetails.dart';
import 'package:projectresponsive2/models/incomemodels.dart';

class incomedetails extends StatelessWidget {
  const incomedetails({super.key});
  final List<Incomemodels> income = const [
    Incomemodels(name: 'Design service', num: '40%', color: Color(0xff208CC8)),
    Incomemodels(name: 'Design product', num: '25%', color: Color(0xff4EB7F2)),
    Incomemodels(name: 'Product royalti', num: '20%', color: Color(0xff064061)),
    Incomemodels(name: 'Other', num: '22%', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
   
   return Column(
    children: income.map((e) => ListtileIncome(income: e)).toList(),
   );
    return ListView.builder(
      itemCount: income.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListtileIncome(income: income[index]);
      },
    );
  }
}
