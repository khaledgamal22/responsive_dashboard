import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_section.dart';

class LastPart extends StatelessWidget {
  const LastPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardSection(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
