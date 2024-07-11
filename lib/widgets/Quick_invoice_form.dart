import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_title_textfield.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTitledTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomTitledTextField(
                    title: 'Customer Email', hint: 'Type customer Email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTitledTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomTitledTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                color: Colors.white,
                titleColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                color: Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
