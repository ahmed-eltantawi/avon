import 'package:avom/UI/views/on_boarding/final_on_boarding.dart';
import 'package:avom/UI/views/on_boarding/on_boarding_view.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnBoardingView(
            image: Assets.onBoardingOne,
            title: "WELCOME!",
            text:
                "Makeup has the power to transform your mood and empowers you to be a more confident person.",
          ),
          OnBoardingView(
            image: Assets.onBoardingTwo,
            title: "SEARCH & PICK",
            text:
                "We have dedicated set of products and routines hand picked for every skin type.",
          ),
          FinalOnBoardingView(
            image: Assets.onBoardingThree,
            title: "PUSH NOTIFICATIONS ",
            text: "Allow notifications for new makeup & cosmetics offers.",
          ),
        ],
      ),
    );
  }
}
