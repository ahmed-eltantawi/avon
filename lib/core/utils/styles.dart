import 'package:avom/core/utils/fonts.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle inter = TextStyle(
    fontFamily: Fonts.inter,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle segoeUI = TextStyle(
    fontFamily: Fonts.SegoeUI,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle montserratBold = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle montserratMedium = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
