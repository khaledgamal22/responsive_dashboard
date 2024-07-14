import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_textfield.dart';

class CustomTitledTextField extends StatelessWidget {
  const CustomTitledTextField(
      {super.key, required this.title, required this.hint});

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
