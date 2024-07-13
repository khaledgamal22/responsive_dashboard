import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/custom_transaction_item.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  static const List<TransactionModel> transactionlist = [
    TransactionModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        trailing: r'$20,129'),
    TransactionModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        trailing: r'$2,000'),
    TransactionModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        trailing: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(
          headtitle: 'Transaction History',
          tail: Text(
            'See all',
            style: AppStyle.styleMedium16(context).copyWith(
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context).copyWith(
            color: Color(0xffAAAAAA),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          children: List.generate(
            3,
            (index) {
              if (index == 0) {
                return CustomTransactionItem(
                  transactionModel: transactionlist[index],
                  trailingColor: Color(0xffF3735E),
                );
              } else {
                return CustomTransactionItem(
                  transactionModel: transactionlist[index],
                );
              }
            },
          ),
        )
      ],
    );
  }
}
