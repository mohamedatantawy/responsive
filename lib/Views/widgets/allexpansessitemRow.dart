
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/allexpancessitem.dart';
import 'package:projectresponsive2/models/allexpanssesModels.dart';
import 'package:projectresponsive2/utils/app_images.dart';

class allExpansessItemRow extends StatefulWidget {
  const allExpansessItemRow({
    super.key,
  });

  @override
  State<allExpansessItemRow> createState() => _allExpansessItemRowState();
}

class _allExpansessItemRowState extends State<allExpansessItemRow> {
  final List<Allexpanssesmodels> datas = const [
    Allexpanssesmodels(
      image: Assets.imageMoneys,
      title: 'Balance',
      data: 'April 2022',
      price: r'$20,129',
    ),
    Allexpanssesmodels(
      image: Assets.imageCardReceive,
      title: 'Income',
      data: 'April 2022',
      price: r'$20,129',
    ),
    Allexpanssesmodels(
      image: Assets.imageCardSend,
      title: 'Expanses',
      data: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int isselect = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: datas.asMap().entries.map(
      (e) {
        int count = e.key;
        var data = e.value;
        if (count == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                  updataindex(count);
                },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: AllExpancessitem(
                    allexpanssesmodels: data,
                    isactive: isselect == count,
                  ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updataindex(count);
              },
              child: AllExpancessitem(
                allexpanssesmodels: data,
                isactive: isselect == count,
              ),
            ),
          );
        }
      },
    ).toList());
  }

  void updataindex(int count) {
    setState(() {
      isselect = count;
    });
  }
}