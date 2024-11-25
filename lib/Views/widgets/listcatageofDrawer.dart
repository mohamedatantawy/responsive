import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/Drawer_item.dart';
import 'package:projectresponsive2/models/catagesDrawermodels.dart';
import 'package:projectresponsive2/utils/app_images.dart';

class ListCatageofDrawer extends StatefulWidget {
  const ListCatageofDrawer({super.key});

  @override
  State<ListCatageofDrawer> createState() => _ListCatageofDrawerState();
}

class _ListCatageofDrawerState extends State<ListCatageofDrawer> {
  final List<Catagesdrawermodels> catages = const [
    Catagesdrawermodels(image: Assets.imageCategory2, title: 'Dashboerd'),
    Catagesdrawermodels(
        image: Assets.imageConvertCard, title: 'My Transaction'),
    Catagesdrawermodels(image: Assets.imageGraph, title: 'Statistics'),
    Catagesdrawermodels(image: Assets.imageWallet2, title: 'Wallet Account'),
    Catagesdrawermodels(image: Assets.imageChart2, title: 'My Investments'),
  ];
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: catages.length,
   
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (active != index) {
              setState(() {
                active = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 12, vertical: 8),
            child: Drawer_item(
              catagesdrawermodels: catages[index],
              isactive: active==index,
            ),
          ),
        );
      },
    );
  }
}
