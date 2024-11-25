import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/Views/widgets/activeandinactive.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/models/catagesDrawermodels.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class Drawer_item extends StatelessWidget {
  const Drawer_item({
    super.key,
    required this.catagesdrawermodels,
    required this.isactive,
  });
  final Catagesdrawermodels catagesdrawermodels;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive == false
        ? inactiveitem(title: catagesdrawermodels.title,image: catagesdrawermodels.image,)
        : activeitem(catagesdrawermodels: catagesdrawermodels);
  }
}
