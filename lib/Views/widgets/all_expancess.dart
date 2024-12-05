import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/allexpansessitemRow.dart';
import 'package:projectresponsive2/Views/widgets/customebackgroundcontainer.dart';

class AllExpancess extends StatelessWidget {
  const AllExpancess({super.key});

  @override
  Widget build(BuildContext context) {
    return const customBackgroundcontainer(
      child: Column(
        children: [
          HeadertheSection(
            numberoficonshow: 0,
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          allExpansessItemRow()
        ],
      ),
    );
  }
}
