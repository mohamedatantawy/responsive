import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectresponsive2/models/userinfomodels.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class userinfobody extends StatelessWidget {
  const userinfobody(
      {super.key, required this.userinfomodels,
   });
  final Userinfomodels userinfomodels;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical:12, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:const Color(0xffFAFAFA),
      ),
      child: ListTile(
        leading: SvgPicture.asset(userinfomodels.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userinfomodels.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
           fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userinfomodels.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
