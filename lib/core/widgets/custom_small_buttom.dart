import 'package:avom/core/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomSmallBottom extends StatelessWidget {
  const CustomSmallBottom({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.9),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 5),
            ),
          ],
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.arrow_forward_ios, color: kSecondaryColor),
      ),
    );
  }
}
