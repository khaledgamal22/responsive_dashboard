import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/mycard_pageView.dart';
import 'package:responsive_dashboard/widgets/transaction_history_sec.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      color: Colors.white,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Card',
              style: AppStyle.styleSemibold20(context),
            ),
            const SizedBox(
              height: 20,
            ),
            MyCardsPageView(
              pageController: pageController,
            ),
            const SizedBox(
              height: 20,
            ),
            DotsIndicators(
              currentPageIndex: currentPageIndex,
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 24,
              color: Color(0xffF1F1F1),
            ),
            const SizedBox(
              height: 8,
            ),
            const TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
