import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/customDotindiecator.dart';

class Dotindiecator extends StatelessWidget {
  const Dotindiecator({super.key, required this.currentindex});
  final int currentindex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding:const EdgeInsets.only(right: 6),
          child: customDotindiecator(isactive: currentindex==index),
        ),
      ),
    );
  }
}
