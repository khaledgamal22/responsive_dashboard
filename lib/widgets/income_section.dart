import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/income_info.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: IncomeWidget(),
      color: Colors.white,
    );
  }
}

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(
          headtitle: 'Income',
          tail: RangeOption(),
        ),
        SizedBox(
          height: 12,
        ),
        IncomeInfo(),
      ],
    );
  }
}
