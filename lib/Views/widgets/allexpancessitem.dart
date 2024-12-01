
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/inactiveitemexpancessandactive.dart';
import 'package:projectresponsive2/models/allexpanssesModels.dart';

class AllExpancessitem extends StatelessWidget {
  const AllExpancessitem({
    super.key,
    required this.allexpanssesmodels,
    required this.isactive,
  });
  final bool isactive;
  final Allexpanssesmodels allexpanssesmodels;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild:inactiveitemExpancess(
          allexpanssesmodels: allexpanssesmodels,
          isactive: isactive,
        ),
        secondChild: activeitemExpancess(
            allexpanssesmodels: allexpanssesmodels, isactive: isactive),
        crossFadeState: isactive == false
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300));
  }
}
