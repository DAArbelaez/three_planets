import 'package:flutter/material.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/int_contants.dart';

//Text Style

const kTitleTextStyle = TextStyle(
  fontSize: kTextTitleSize,
  color: kMyrtleGreen,
  fontWeight: FontWeight.w700,
);

const kMediumTitleTextStyle = TextStyle(
  fontSize: kTextMediumTitleSize,
  color: kMyrtleGreen,
);

const kSubtitleTextStyle = TextStyle(
  fontSize: kTextSubtitleSize,
  color: kMyrtleGreen,
);

const kContentTextStyle = TextStyle(
  fontSize: kTextContentSize,
  color: kMyrtleGreen,
  fontWeight: FontWeight.w300,
);

const kCaptionTextStyle = TextStyle(
  fontSize: kTextCaptionSize,
  color: kMyrtleGreen,
);

//Button Style
const kTPButtonTextStyle = TextStyle(
  fontSize: kTextContentSize,
  color: kWhite,
  fontWeight: FontWeight.w600,
);

//TextField

const kTextFieldInputDecoration = InputDecoration(
  border: OutlineInputBorder(borderRadius: _borderRadius),
  focusedBorder:
  OutlineInputBorder(borderSide: _borderSide, borderRadius: _borderRadius),
  enabledBorder:
  OutlineInputBorder(borderSide: _borderSide, borderRadius: _borderRadius),
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  hintStyle: TextStyle(color: kMyrtleGreen, fontWeight: FontWeight.w300),
  labelStyle: kContentTextStyle,
  contentPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
);

const _borderRadius = BorderRadius.all(Radius.circular(86));
const _borderSide = BorderSide(color: kSilver);
