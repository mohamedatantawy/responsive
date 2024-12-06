import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/adaptivelayout.dart';
import 'package:projectresponsive2/Views/widgets/customDrawer.dart';
import 'package:projectresponsive2/Views/widgets/desklayout.dart';
import 'package:projectresponsive2/Views/widgets/mobilelayout.dart';
import 'package:projectresponsive2/Views/widgets/tabletlayout.dart';
import 'package:projectresponsive2/constant.dart';

class Dashboerdview extends StatefulWidget {
  const Dashboerdview({super.key});

  @override
  State<Dashboerdview> createState() => _DashboerdviewState();
}

class _DashboerdviewState extends State<Dashboerdview> {
  GlobalKey<ScaffoldState> scaffoldky = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldky,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldky.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF5F5F5),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const Customdrawer() : null,
      body: Adaptivelayout(
        mobilelayout: (context) => const Mobilelayout(),
        tabletlayout: (context) => const Tabletlayout(),
        desklayout: (context) => const Desklayout(),
      ),
    );
  }
}
