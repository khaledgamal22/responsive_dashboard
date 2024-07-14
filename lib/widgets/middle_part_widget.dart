import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class MiddlePartWidget extends StatelessWidget {
  const MiddlePartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
