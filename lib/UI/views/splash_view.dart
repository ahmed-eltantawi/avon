import 'package:avom/UI/views/on_boarding/on_boarding_view_one.dart';
import 'package:avom/UI/views/on_boarding/page_view.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    navigationToHomePage(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * (1 / 2),
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(Assets.logo),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "COSMATICS",
              style: Styles.inter.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .5,

              child: AspectRatio(
                aspectRatio: 11 / 1,
                child: SizedBox(child: SvgPicture.asset(Assets.splashSubtitle)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigationToHomePage(BuildContext context) {
  Future.delayed(const Duration(seconds: 1), () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CustomPageView();
        },
      ),
    );
  });
}
