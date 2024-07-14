import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_card_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_card_header.dart';

class InActiveAllExpensesCard extends StatelessWidget {
  const InActiveAllExpensesCard({
    super.key,
    required this.cardModel,
  });

  final AllExpensesCardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            cardModel: cardModel,
            iconColor: const Color(0xff4EB7F2),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.title,
              style: AppStyle.styleSemibold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.date,
              style: AppStyle.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.amount,
              style: AppStyle.styleSemibold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesCard extends StatelessWidget {
  const ActiveAllExpensesCard({
    super.key,
    required this.cardModel,
  });

  final AllExpensesCardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            cardModel: cardModel,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.title,
              style: AppStyle.styleSemibold16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              cardModel.amount,
              style: AppStyle.styleSemibold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
