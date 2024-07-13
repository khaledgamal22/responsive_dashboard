import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/models/all_expenses_card_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

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
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xffFAFAFA),
                ),
                child: Image.asset(
                  cardModel.icon,
                  color: const Color(0xff4EB7F2),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(FontAwesomeIcons.chevronRight),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            cardModel.title,
            style: AppStyle.styleSemibold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            cardModel.date,
            style: AppStyle.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            cardModel.amount,
            style: AppStyle.styleSemibold24(context),
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
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: Colors.white.withOpacity(0.1),
                ),
                child: Image.asset(
                  cardModel.icon,
                  color: Colors.white,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            cardModel.title,
            style: AppStyle.styleSemibold16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            cardModel.date,
            style:
                AppStyle.styleRegular14(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            cardModel.amount,
            style:
                AppStyle.styleSemibold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
