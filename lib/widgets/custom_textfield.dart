import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(20),
        hintStyle: AppStyle.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
