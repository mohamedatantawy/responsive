import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/customDrawer.dart';
import 'package:projectresponsive2/Views/widgets/dashboredmodilelayout.dart';

class Tabletlayout extends StatelessWidget {
  const Tabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Customdrawer()),
        Expanded(
          flex: 3,
          child: dashboerdmobillayout(),
        ),
       
        
      ],
    );
  }
}
