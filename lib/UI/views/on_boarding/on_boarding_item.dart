import 'package:avom/UI/models/on_boarding_model.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Expanded(flex: 5, child: Image.asset(onBoardingModel.image)),
          SizedBox(height: 27),
          Text(onBoardingModel.title, style: Styles.segoeUI),
          SizedBox(height: 10),
          Padding(
            padding: const .symmetric(horizontal: 41.0),
            child: Text(
              onBoardingModel.text,
              textAlign: .center,
              style: Styles.segoeUI.copyWith(fontWeight: .normal),
            ),
          ),
        ],
      ),
    );
  }
}
