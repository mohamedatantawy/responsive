import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/size_config.dart';

abstract class AppStyles {
 

  static styleRegular16(context){
   return TextStyle(
      fontSize: getresponsiveFontsize( context,
        fontsize: 16,
      ),
      fontFamily: 'Montserrat',
      color: Color(0xff4EB7F2),
      fontWeight: FontWeight.w400);
  }
 
  static styleBold16(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    color: kprimaycolor, // Assuming `kprimaycolor` is defined elsewhere
    fontWeight: FontWeight.w700,
  );
}

  static styleMedium16(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    color: Color(0xff064061),
    fontWeight: FontWeight.w400,
  );
}
static styleSemiBold16(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    color: Color(0xff064061),
    fontWeight: FontWeight.w600,
  );
}

  static styleSemiBold20(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 20),
    fontFamily: 'Montserrat',
    color: Color(0xff064061),
    fontWeight: FontWeight.w600,
  );
}
static styleMedium20(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 20),
    fontFamily: 'Montserrat',
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w500,
  );
}

  static styleRegular12(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 12),
    fontFamily: 'Montserrat',
    color: Color(0xffAAAAAA),
    fontWeight: FontWeight.w400,
  );
}
static styleSemiBold24(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 24),
    fontFamily: 'Montserrat',
    color: Color(0xff4EB7F2),
    fontWeight: FontWeight.w600,
  );
}
static styleRegular14(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 14),
    fontFamily: 'Montserrat',
    color: Color(0xffAAAAAA),
    fontWeight: FontWeight.w400,
  );
}


  static styleRegular18(context) {
  return TextStyle(
    fontSize: getresponsiveFontsize(context, fontsize: 18),
    fontFamily: 'Montserrat',
    color: Color(0xff4EB7F2),
    fontWeight: FontWeight.w400,
  );
}

}

double getresponsiveFontsize(context,{required double fontsize}) {
  double getscaalefactor = getscalefactor(context);
  double responsviefont = fontsize * getscaalefactor;
  double lower = responsviefont * 0.8;
  double upper = responsviefont * 1.2;
  return responsviefont.clamp(lower, upper);
}

double getscalefactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physical = dispatcher.views.first.physicalSize.width;
  // var devicepixel = dispatcher.views.first.devicePixelRatio;
  // var width = physical / devicepixel;
  var width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobile) {
    return width / 550;
  } else if (width < SizeConfig.tablet) {
    return width / 1000;
  } else {
    return width / 1950;
  }
}
