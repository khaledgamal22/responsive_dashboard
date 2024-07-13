import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: getResponsiveFont(
        context,
        fontsize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: getResponsiveFont(
        context,
        fontsize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemibold16(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: getResponsiveFont(
        context,
        fontsize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemibold20(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: getResponsiveFont(
        context,
        fontsize: 20,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: getResponsiveFont(
        context,
        fontsize: 12,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold24(BuildContext context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFont(
        context,
        fontsize: 24,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: getResponsiveFont(
        context,
        fontsize: 14,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold18(BuildContext context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: getResponsiveFont(
        context,
        fontsize: 18,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFont(
        context,
        fontsize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: getResponsiveFont(
        context,
        fontsize: 20,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFont(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFont = scaleFactor * fontsize;
  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.3;
  responsiveFont.clamp(lowerLimit, upperLimit);
  return responsiveFont;
}

double getScaleFactor(BuildContext context) {
  // var dispacher = PlatformDispatcher.instance;
  // var physicalwidth = dispacher.views.first.physicalSize.width;
  // var physicalPixelRatio = dispacher.views.first.devicePixelRatio;
  // var width = physicalwidth / physicalPixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width > SizeConfig.tablet && width <= SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
