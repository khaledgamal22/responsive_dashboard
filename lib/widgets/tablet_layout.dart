import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
