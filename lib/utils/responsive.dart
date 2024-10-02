import 'package:flutter/material.dart';

/// A widget that adapts to different screen sizes by rendering different
/// layouts for mobile, tablet, and desktop devices.
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  /// Creates a [Responsive] widget that renders different layouts based on screen size.
  ///
  /// [mobile] is required and defines the layout for compact screens such as phones.
  /// [tablet] is optional and defines the layout for medium-sized screens such as tablets.
  /// [desktop] is required and defines the layout for larger screens such as desktops.
  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 && MediaQuery.sizeOf(context).width < 840;

  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 840;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    // Desktop layout for screen width >= 840px
    if (size.width >= 840) {
      return desktop;
    }
    // Tablet layout for screen width between 600px and 840px
    else if (size.width >= 600 && tablet != null) {
      return tablet!;
    }
    // Mobile layout for screen width < 600px
    else {
      return mobile;
    }
  }
}
