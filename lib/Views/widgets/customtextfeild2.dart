import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class Customtextfeild2 extends StatelessWidget {
  const Customtextfeild2({super.key, this.backgroundcolor, this.colortext});
  final Color? backgroundcolor;
  final Color? colortext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundcolor ?? kprimaycolor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        child: Text(
          'Send Money',
          style: AppStyles.styleregular18.copyWith(
            fontWeight: FontWeight.w600,
            color: colortext ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
