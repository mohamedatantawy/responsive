import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/adaptivelayout.dart';
import 'package:projectresponsive2/Views/widgets/desklayout.dart';
import 'package:projectresponsive2/Views/widgets/mobilelayout.dart';
import 'package:projectresponsive2/Views/widgets/mycard.dart';
import 'package:projectresponsive2/Views/widgets/tabletlayout.dart';

class Dashboerdview extends StatelessWidget {
  const Dashboerdview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF5F5F5),
      body: Adaptivelayout(
        mobilelayout: (context) =>const Mobilelayout(),
        tabletlayout: (context) =>const Tabletlayout(),
        desklayout: (context) =>const Desklayout(),
      ),
    );
  }
}
