import 'package:avom/core/utils/consts.dart';
import 'package:avom/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextOtp extends StatefulWidget {
  const CustomTextOtp({
    super.key,
    required this.onChanged,
    required this.controller,
  });
  final Function onChanged;
  final TextEditingController controller;

  @override
  State<CustomTextOtp> createState() => _CustomTextOtpState();
}

class _CustomTextOtpState extends State<CustomTextOtp> {
  @override
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();

    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: TextFormField(
        focusNode: focusNode,
        controller: widget.controller,
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {});

          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        cursorColor: AppColors.iceBlue,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.controller.text.isNotEmpty
                  ? AppColors.red
                  : AppColors.iceBlue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.iceBlue, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: focusNode.hasFocus ? '' : '_',
          hintStyle: Styles.montserratBold,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        style: Styles.montserratBold.copyWith(color: Colors.black),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
