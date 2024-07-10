import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemibold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOption(),
      ],
    );
  }
}
