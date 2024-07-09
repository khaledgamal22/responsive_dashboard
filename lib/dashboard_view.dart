import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobilelayout: (context) => MobileLayout(),
        tabletlayout: (context) => TabletLayout(),
        desktoplayout: (context) => DesktopLayout(),
      ),
    );
  }
}
