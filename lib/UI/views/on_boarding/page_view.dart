import 'package:avom/UI/views/on_boarding/on_boarding_view_one.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: .only(right: 16),
            child: Text(
              "Skip",
              style: Styles.segoeUI.copyWith(fontWeight: .w500),
            ),
          ),
        ],

        automaticallyImplyLeading: false,
      ),
      body: PageView(
        children: [
          OnBoardingView(
            image: Assets.onBoardingOne,
            title: "WELCOME!",
            text:
                "Makeup has the power to transform your mood and empowers you to be a more confident person.",
          ),
        ],
      ),
    );
  }
}
