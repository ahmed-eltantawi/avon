import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/fonts.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle inter = TextStyle(
    fontFamily: Fonts.inter,
    fontSize: 16,
    fontWeight: FontWeight.w600,

    color: AppColors.primaryColor,
  );
  static const TextStyle segoeUI = TextStyle(
    fontFamily: Fonts.SegoeUI,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle montserratBold = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle montserratMedium = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static const TextStyle montserratSemiBold = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.red,
  );
  static const TextStyle montserratRegular = TextStyle(
    fontFamily: Fonts.montserrat,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.iceBlue,
  );
}
