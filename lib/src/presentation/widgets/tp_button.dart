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
    this.buttonHeight = kTPButtonHeight,
    this.icon,
  });

  final bool isEnabled;
  final String txtLabel;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final double buttonHeight;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: double.infinity,
      child: TextButton(
        style: buttonStyle ?? kTPButtonStyle,
        onPressed: isEnabled ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: icon,
              ),
            Text(
              txtLabel,
              style: textStyle ?? kTPButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
