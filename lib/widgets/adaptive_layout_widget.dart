import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobilelayout,
    required this.tabletlayout,
    required this.desktoplayout,
  });

  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth <= 800) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: mobilelayout(context),
        );
      } else if (constrains.maxWidth > 800 && constrains.maxWidth <= 1200) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: tabletlayout(context),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: desktoplayout(context),
        );
      }
    });
  }
}
