import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_big_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void pushPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ),
  );
}

Future<dynamic> CustomDialog(BuildContext context) {
  return showDialog(
    context: context,

    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.secondaryColor,
        title: Text("Account Activated", style: Styles.inter),
        content: Text(
          "Congratulations! Your account has been successfully activated",
          style: Styles.inter.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.iceBlue,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          CustomBigBottom(
            onTap: () {
              // pushPage(context, page);
            },
            text: "Go to home",
          ),
        ],
        icon: SvgPicture.asset(
          Assets.correctIcon,
          width: MediaQuery.sizeOf(context).width * 0.25,
        ),
      );
    },
  );
}
