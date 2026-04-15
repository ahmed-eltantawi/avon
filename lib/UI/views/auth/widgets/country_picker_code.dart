import 'package:avom/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CountryCodePicker extends StatefulWidget {
  const CountryCodePicker({super.key});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  String selectedCode = '+20';

  final List<String> codes = ['+20', '+966', '+971', '+1', '+44'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: AppColors.secondaryColor,

      onSelected: (value) {
        setState(() {
          selectedCode = value;
        });
      },
      itemBuilder: (context) => codes
          .map((code) => PopupMenuItem(value: code, child: Text(code)))
          .toList(),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.iceBlue),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(selectedCode, style: TextStyle(color: AppColors.iceBlue)),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: AppColors.iceBlue,
            ),
          ],
        ),
      ),
    );
  }
}
