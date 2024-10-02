import 'package:flutter/material.dart';
import 'package:three_planets/constants/button_constants.dart';
import 'package:three_planets/constants/int_contants.dart';
import 'package:three_planets/constants/text_constants.dart';

class TPButton extends StatelessWidget {
  const TPButton({
    super.key,
    this.isEnabled = true,
    required this.txtLabel,
    required this.onPressed,
    this.buttonStyle,
    this.textStyle,
  });

  final bool isEnabled;
  final String txtLabel;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kTPButtonHeight,
      width: double.infinity,
      child: TextButton(
        style: buttonStyle ?? kTPButtonStyle,
        onPressed: isEnabled ? onPressed : null,
        child: Text(
          txtLabel,
          style: textStyle ?? kTPButtonTextStyle,
        ),
      ),
    );
  }
}
