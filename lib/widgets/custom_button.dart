import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, required this.color, this.titleColor});

  final String title;
  final Color color;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Center(
          child: Text(
            title,
            style: titleColor == null
                ? AppStyle.styleSemibold18(context)
                : AppStyle.styleSemibold18(context).copyWith(
                    color: titleColor,
                  ),
          ),
        ),
        color: color);
  }
}
