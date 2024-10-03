import 'package:flutter/material.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/text_constants.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.title, required this.icon});

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              title,
              style: kContentTextStyle.copyWith(
                color: kMyrtleGreenWithOpacity,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
