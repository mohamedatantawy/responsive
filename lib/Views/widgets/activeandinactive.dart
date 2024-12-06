import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/models/catagesDrawermodels.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class inactiveitem extends StatelessWidget {
  const inactiveitem({
    super.key, required this.title, required this.image,
   
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class activeitem extends StatelessWidget {
  const activeitem({
    super.key,
    required this.catagesdrawermodels,
  });

  final Catagesdrawermodels catagesdrawermodels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(catagesdrawermodels.image),
      title: Text(
        catagesdrawermodels.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 4,
        color: kprimaycolor,
      ),
    );
  }
}
