import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/all_expancess.dart';
import 'package:projectresponsive2/Views/widgets/customDrawer.dart';

class Desklayout extends StatelessWidget {
  const Desklayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Customdrawer(),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              AllExpancess(),
            ],
          ),
        ),
      ],
    );
  }
}
