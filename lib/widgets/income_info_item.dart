import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class IncomeInfoItem extends StatelessWidget {
  const IncomeInfoItem({super.key, required this.incomeModel});

  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: ShapeDecoration(
            color: incomeModel.dotColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          incomeModel.title,
          style: AppStyle.styleRegular16,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Text(
          incomeModel.percentage,
          style: AppStyle.styleMedium16.copyWith(
            color: Color(0xff208CC8),
          ),
        )
      ],
    );
  }
}
