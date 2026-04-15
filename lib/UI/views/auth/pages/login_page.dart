import 'package:avom/UI/views/auth/pages/register_page.dart';
import 'package:avom/UI/views/auth/widgets/country_picker_code.dart';
import 'package:avom/UI/views/auth/widgets/custom_text_filed.dart';
import 'package:avom/UI/views/auth/widgets/password_text_filed.dart';
import 'package:avom/core/logic/methods.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_big_buttom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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

                Image.asset(Assets.loginImage),
                SizedBox(height: 25),

                Text(
                  "Login Now",
                  style: Styles.montserratBold.copyWith(fontSize: 24),
                ),
                SizedBox(height: 14),

                Text(
                  "Please enter the details below to continue",
                  style: Styles.montserratRegular,
                ),
                SizedBox(height: 41),

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
                SizedBox(height: 8),
                PasswordTextField(
                  hint: "Your Password",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 12),
                Align(
                  alignment: .centerRight,
                  child: Text(
                    "Forget Password?",
                    style: Styles.montserratMedium.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                ),
                SizedBox(height: 43),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: CustomBigBottom(onTap: () {}, text: "Login"),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: Styles.montserratRegular.copyWith(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushPage(context, RegisterPage());
                      },
                      child: Text("Register", style: Styles.montserratSemiBold),
                    ),
                  ],
                ),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
