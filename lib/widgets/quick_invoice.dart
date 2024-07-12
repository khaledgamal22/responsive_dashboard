import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_list_section.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        color: Colors.white,
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(
              headtitle: 'Quick Invoice',
              tail: Container(
                width: 48,
                height: 48,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xffFAFAFA),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xff4EB7F2),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const QuickInvoiceListSec(),
            const Divider(
              height: 24,
              color: Color(0xffF1F1F1),
            ),
            const QuickInvoiceForm(),
          ],
        ));
  }
}
