
import 'package:flutter/material.dart';
import 'package:three_planets/utils/responsive.dart';

double responsiveInt(
    BuildContext context, {
      required double isDesktop,
      required double isTablet,
      required double isMobile,
    }) {
  return Responsive.isDesktop(context)
      ? isDesktop
      : Responsive.isTablet(context)
      ? isTablet
      : isMobile;
}

double widthScreen(BuildContext context) => MediaQuery.sizeOf(context).width;

double heightScreen(BuildContext context) => MediaQuery.sizeOf(context).height;
