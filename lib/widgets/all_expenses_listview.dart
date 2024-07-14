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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesCard(
              cardModel: allExpenseslist[0],
              isActive: cardIndex == 0,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesCard(
              cardModel: allExpenseslist[1],
              isActive: cardIndex == 1,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesCard(
              cardModel: allExpenseslist[2],
              isActive: cardIndex == 2,
            ),
          ),
        )
      ],
    );
    // return Row(
    //     children: allExpenseslist.asMap().entries.map((e) {
    //   return Expanded(
    //     child: Padding(
    //       padding: e.key == 1
    //           ? const EdgeInsets.symmetric(
    //               horizontal: 12,
    //             )
    //           : EdgeInsets.zero,
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(e);
    //         },
    //         child: AllExpensesCard(
    //           cardModel: e.value,
    //           isActive: cardIndex == e.key,
    //         ),
    //       ),
    //     ),
    //   );
    // }).toList());
  }

  void updateIndex(int index) {
    if (cardIndex != index) {
      setState(() {
        cardIndex = index;
      });
    }
  }
}
