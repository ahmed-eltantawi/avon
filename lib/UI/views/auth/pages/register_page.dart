import 'package:avom/UI/views/auth/widgets/country_picker_code.dart';
import 'package:avom/UI/views/auth/widgets/custom_text_filed.dart';
import 'package:avom/UI/views/auth/widgets/password_text_filed.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_big_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                SizedBox(height: 102),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .25,
                  child: SvgPicture.asset(Assets.logo),
                ),
                SizedBox(height: 40),

                Text(
                  "Create Account",
                  style: Styles.montserratBold.copyWith(fontSize: 24),
                ),

                SizedBox(height: 50),
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  label: 'Your Name',
                  hint: 'Sara Samer',
                ),
                SizedBox(height: 16),
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  label: 'E-mail',
                  hint: 'amramer522@gmail.com',
                ),
                SizedBox(height: 16),

                Row(
                  children: [
                    CountryCodePicker(),
                    SizedBox(width: 6),
                    Expanded(
                      child: CustomTextField(
                        textInputAction: TextInputAction.next,
                        label: 'Phone Number',
                        hint: '1022658997',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                PasswordTextField(
                  hint: "Create your Password",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 16),
                PasswordTextField(
                  hint: "Confirm your password",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 16),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: CustomBigBottom(onTap: () {}, text: "Next"),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Have an account ",
                      style: Styles.montserratRegular.copyWith(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text("Login", style: Styles.montserratSemiBold),
                    SizedBox(height: 34),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
