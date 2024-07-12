import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class CustomTransactionItem extends StatelessWidget {
  const CustomTransactionItem(
      {super.key, this.trailingColor, required this.transactionModel});

  final TransactionModel transactionModel;
  final Color? trailingColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            transactionModel.title,
            style: AppStyle.styleSemibold16,
          ),
          subtitle: Text(
            transactionModel.subtitle,
            style: AppStyle.styleRegular16.copyWith(
              color: Color(0xffAAAAAA),
            ),
          ),
          trailing: Text(
            transactionModel.trailing,
            style: AppStyle.styleSemibold20.copyWith(
              color: trailingColor ?? Color(0xff7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}
