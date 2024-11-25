import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class userinfobody extends StatelessWidget {
  const userinfobody({super.key, required this.title, required this.subtitle, required this.image});
  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAFAFA),
      ),
      child: ListTile(
       leading:  SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.stylesemibold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleregular12,
        ),
      ),
    );
  }
}
