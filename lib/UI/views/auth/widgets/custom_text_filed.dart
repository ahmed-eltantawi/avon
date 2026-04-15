import 'package:avom/core/utils/app_colors.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.label,
    required this.hint,
    this.hideText = false,
    required this.textInputAction,
  });
  final String? label;
  final String hint;
  final bool hideText;
  final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: textInputAction,
      obscureText: hideText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        labelStyle: Styles.montserratRegular.copyWith(fontSize: 18),

        hint: Text(
          hint,
          style: Styles.montserratRegular.copyWith(
            fontSize: 13,
            color: AppColors.primaryColor,
          ),
        ),
        focusColor: AppColors.iceBlue,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.iceBlue),
        ),
      ),
    );
  }
}
