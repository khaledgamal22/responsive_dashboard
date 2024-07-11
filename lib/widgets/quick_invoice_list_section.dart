import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_list.dart';

class QuickInvoiceListSec extends StatelessWidget {
  const QuickInvoiceListSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16,
        ),
        SizedBox(
          height: 3,
        ),
        QuickInvoiceList(),
      ],
    );
  }
}
