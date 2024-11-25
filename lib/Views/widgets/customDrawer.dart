import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectresponsive2/Views/widgets/Drawer_item.dart';
import 'package:projectresponsive2/Views/widgets/activeandinactive.dart';
import 'package:projectresponsive2/Views/widgets/listcatageofDrawer.dart';
import 'package:projectresponsive2/Views/widgets/userinfobody.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/models/catagesDrawermodels.dart';
import 'package:projectresponsive2/utils/app_images.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({super.key});

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: userinfobody(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imageFrame1,
            ),
          ),
          ListCatageofDrawer(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                inactiveitem(
                    title: 'Setting system', image: Assets.imageSetting2),
                inactiveitem(
                    title: 'Logout account', image: Assets.imageLogout),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
