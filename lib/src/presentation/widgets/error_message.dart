import 'package:flutter/material.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/icon_constants.dart';
import 'package:three_planets/constants/text_constants.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kWarningIcon,
          const SizedBox(height: 20),
          Text(message, style: kTitleTextStyle.copyWith(color: kMyrtleGreenWithOpacity))
        ],
      ),
    );
  }
}
