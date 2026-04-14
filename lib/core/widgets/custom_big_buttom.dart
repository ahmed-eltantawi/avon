import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBigBottom extends StatelessWidget {
  const CustomBigBottom({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.segoeUI.copyWith(color: kSecondaryColor),
          ),
        ),
      ),
    );
  }
}
