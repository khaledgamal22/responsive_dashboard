import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class MiddlePartWidget extends StatelessWidget {
  const MiddlePartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Column(
        children: [
          Expanded(flex: 3, child: AllExpenses()),
          SizedBox(
            height: 20,
          ),
          Expanded(flex: 4, child: QuickInvoice()),
        ],
      ),
    );
  }
}
