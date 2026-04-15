import 'dart:developer';

import 'package:avom/UI/views/auth/pages/custom_otp_input_text_filed.dart';
import 'package:avom/core/logic/methods.dart';
import 'package:avom/core/utils/app_assets.dart';
import 'package:avom/core/utils/app_colors.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:avom/core/widgets/custom_big_buttom.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:async';

class VerificationPage extends StatefulWidget {
  const VerificationPage({
    super.key,
    required this.email,
    required this.userName,
  });
  final String email;
  final String userName;
  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  List<String> pins = ['', '', '', ''];

  List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  bool isLoading = false;

  int _secondsRemaining = 0;

  Timer? _timer;

  bool get isComplete => pins.every((p) => p.isNotEmpty);

  @override
  void initState() {
    super.initState();
    sendOtpCode();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var c in controllers) {
      c.dispose();
    }
    super.dispose();
  }

  void _startCooldownTimer() {
    _secondsRemaining = 30;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _secondsRemaining--;
      });
      if (_secondsRemaining == 0) {
        timer.cancel();
      }
    });
  }

  void _clearAllPins() {
    for (int i = 0; i < 4; i++) {
      pins[i] = '';
      controllers[i].clear();
    }
  }

  Future<void> sendOtpCode() async {
    bool result = await EmailOTP.sendOTP(email: widget.email);
    if (!mounted) return;
    _startCooldownTimer();
    if (result) {
      log('The OTP has been sent successfully');
    } else {
      log('Sending failed, try again');
    }
  }

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
                SizedBox(height: 94),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .2,
                  child: SvgPicture.asset(Assets.logo),
                ),
                SizedBox(height: 40),
                Text(
                  "Verify Code",
                  style: Styles.montserratBold.copyWith(fontSize: 24),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Text.rich(
                    TextSpan(
                      text:
                          "We just sent a 4-digit verification code to your email ",
                      style: Styles.montserratRegular,
                      children: [
                        TextSpan(
                          text: widget.email,
                          style: Styles.montserratBold.copyWith(
                            fontSize: 14,
                            color: AppColors.iceBlue,
                          ),
                        ),
                        TextSpan(
                          text:
                              ". Enter the code in the box below to continue.",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: .centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Edit the number",
                      style: Styles.montserratSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: CustomTextOtp(
                        controller: controllers[index],
                        onChanged: (value) {
                          setState(() {
                            pins[index] = value;
                          });
                        },
                      ),
                    );
                  }),
                ),
                SizedBox(height: 43),
                Row(
                  children: [
                    Text(
                      "Didn't receive a code? ",
                      style: Styles.montserratMedium,
                    ),
                    Text(
                      "Resend",
                      style: Styles.montserratMedium.copyWith(
                        color: AppColors.red,
                      ),
                    ),
                    Spacer(),

                    Text(
                      "0:${_secondsRemaining.toString().padLeft(2, '0')}",
                      style: Styles.montserratMedium.copyWith(
                        color: AppColors.iceBlue,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: CustomBigBottom(
                    onTap: () {
                      CustomDialog(context);
                    },
                    text: "Done",
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
