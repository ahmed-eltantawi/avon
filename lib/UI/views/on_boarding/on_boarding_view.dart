import 'package:avom/UI/views/auth/pages/login_page.dart';
import 'package:avom/UI/views/on_boarding/on_boarding_item.dart';
import 'package:avom/core/logic/methods.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_big_buttom.dart';
import 'package:avom/core/widgets/custom_small_buttom.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingView extends StatefulWidget {
  const CustomOnBoardingView({super.key});

  @override
  State<CustomOnBoardingView> createState() => _CustomOnBoardingViewState();
}

class _CustomOnBoardingViewState extends State<CustomOnBoardingView> {
  int index = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: .topRight,
            child: GestureDetector(
              onTap: () {
                pushPage(context, LoginPage());
              },
              child: Padding(
                padding: .all(20),
                child: Text(
                  "Skip",
                  style: Styles.segoeUI.copyWith(fontWeight: .w500),
                ),
              ),
            ),
          ),

          Spacer(flex: 1),
          Expanded(
            flex: 6,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                index = value;
                setState(() {});
              },

              children: [
                OnBoardingItem(
                  image: Assets.onBoardingOne,
                  title: "WELCOME!",
                  text:
                      "Makeup has the power to transform your mood and empowers you to be a more confident person.",
                ),
                OnBoardingItem(
                  image: Assets.onBoardingTwo,
                  title: "SEARCH & PICK",
                  text:
                      "We have dedicated set of products and routines hand picked for every skin type.",
                ),
                OnBoardingItem(
                  image: Assets.onBoardingThree,
                  title: "PUSH NOTIFICATIONS ",
                  text:
                      "Allow notifications for new makeup & cosmetics offers.",
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          index == 2
              ? Padding(
                  padding: const .symmetric(horizontal: 60),
                  child: CustomBigBottom(
                    text: "Let's Start",
                    onTap: () {
                      pushPage(context, LoginPage());
                    },
                  ),
                )
              : CustomSmallBottom(
                  onTap: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
