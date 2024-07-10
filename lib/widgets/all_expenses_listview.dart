import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_card_model.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_card.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<AllExpensesCardModel> allExpenseslist = [
    const AllExpensesCardModel(
      icon: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      amount: r'$20,192',
    ),
    const AllExpensesCardModel(
      icon: Assets.imagesIncom,
      title: 'Income',
      date: 'April 2022',
      amount: r'$20,192',
    ),
    const AllExpensesCardModel(
      icon: Assets.imagesExpneses,
      title: 'Expenses',
      date: 'April 2022',
      amount: r'$20,192',
    ),
  ];

  int cardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: allExpenseslist.asMap().entries.map((e) {
      if (e.key == 1) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: GestureDetector(
              onTap: () {
                updateIndex(e);
              },
              child: AllExpensesCard(
                cardModel: e.value,
                isActive: cardIndex == e.key,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(e);
            },
            child: AllExpensesCard(
              cardModel: e.value,
              isActive: cardIndex == e.key,
            ),
          ),
        );
      }
    }).toList());
  }

  void updateIndex(MapEntry<int, AllExpensesCardModel> e) {
    if (cardIndex != e.key) {
      setState(() {
        cardIndex = e.key;
      });
    }
  }
}
