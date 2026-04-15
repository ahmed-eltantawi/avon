import 'package:avom/UI/views/auth/widgets/custom_text_filed.dart';
import 'package:avom/core/utils/consts.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.textInputAction,
    required this.hint,
  });
  final TextInputAction textInputAction;
  final String hint;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool passwordHide = true;
  IconData passwordIcon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.xy(1, .8),
      children: [
        CustomTextField(
          textInputAction: widget.textInputAction,
          hint: widget.hint,
          hideText: passwordHide,
        ),
        IconButton(
          onPressed: changeThePasswordState,
          icon: Icon(passwordIcon, color: AppColors.iceBlue),
        ),
      ],
    );
  }

  void changeThePasswordState() {
    if (passwordIcon == Icons.visibility_off_outlined) {
      passwordIcon = Icons.remove_red_eye_outlined;
    } else {
      passwordIcon = Icons.visibility_off_outlined;
    }
    passwordHide = !passwordHide;
    setState(() {});
  }
}
