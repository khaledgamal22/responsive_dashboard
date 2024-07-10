import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_card_model.dart';
import 'package:responsive_dashboard/widgets/active_inactive_allexpenses.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard(
      {super.key, required this.cardModel, required this.isActive});

  final AllExpensesCardModel cardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesCard(cardModel: cardModel)
        : InActiveAllExpensesCard(cardModel: cardModel);
  }
}
