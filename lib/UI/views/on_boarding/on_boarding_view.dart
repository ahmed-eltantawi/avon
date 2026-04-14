import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_small_buttom.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });
  final String image;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Expanded(flex: 5, child: Image.asset(image)),
          SizedBox(height: 27),
          Text(title, style: Styles.segoeUI),
          SizedBox(height: 10),
          Padding(
            padding: const .symmetric(horizontal: 41.0),
            child: Text(
              text,
              textAlign: .center,
              style: Styles.segoeUI.copyWith(fontWeight: .normal),
            ),
          ),
        ],
      ),
    );
  }
}
