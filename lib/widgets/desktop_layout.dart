import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/last_part_widget.dart';
import 'package:responsive_dashboard/widgets/middle_part_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: MiddlePartWidget(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      flex: 1,
                      child: LastPart(),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
