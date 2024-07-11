import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_list_section.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        color: Colors.white,
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 12,
            ),
            QuickInvoiceListSec(),
            Divider(
              height: 24,
            ),
            QuickInvoiceForm(),
          ],
        ));
  }
}
