import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_listview.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      color: Colors.white,
      padding: 20,
      child: Column(
        children: [
          CustomHeader(
            headtitle: 'All Expenses',
            tail: RangeOption(),
          ),
          SizedBox(
            height: 25,
          ),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
