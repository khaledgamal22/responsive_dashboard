import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.headtitle, required this.tail});

  final String headtitle;
  final Widget tail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headtitle,
          style: AppStyle.styleSemibold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        tail,
      ],
    );
  }
}
