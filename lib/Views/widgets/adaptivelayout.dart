// Implements a responsive layout in Flutter using LayoutBuilder to render different layouts based on screen size.
import 'package:flutter/material.dart';

class Adaptivelayout extends StatelessWidget {
  const Adaptivelayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desklayout});
  final WidgetBuilder mobilelayout, tabletlayout, desklayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletlayout(context);
        } else {
          return desklayout(context);
        }
      },
    );
  }
}
