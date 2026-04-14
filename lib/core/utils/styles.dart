import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/fonts.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle inter = TextStyle(
    fontFamily: Fonts.inter,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 4,
    color: kPrimaryColor,
  );
  static const TextStyle segoeUI = TextStyle(
    fontFamily: Fonts.SegoeUI,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: kPrimaryColor,
  );
  static const TextStyle montserratBold = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: kPrimaryColor,
  );
  static const TextStyle montserratMedium = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: kPrimaryColor,
  );
}
