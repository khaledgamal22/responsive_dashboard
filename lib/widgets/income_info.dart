import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/uitils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_info_item.dart';

class IncomeInfo extends StatelessWidget {
  const IncomeInfo({super.key});

  static const List<IncomeModel> incomelist = [
    IncomeModel(
        dotColor: Color(0xff208CC8),
        title: 'Design service',
        percentage: '40%'),
    IncomeModel(
        dotColor: Color(0xff4EB7F2),
        title: 'Design product',
        percentage: '25%'),
    IncomeModel(
        dotColor: Color(0xff064061),
        title: 'Product royalti',
        percentage: '20%'),
    IncomeModel(dotColor: Color(0xffE2DECD), title: 'Other', percentage: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width > SizeConfig.desktop && width < 1680
        ? const Expanded(child: CustomIncomeChart())
        : Row(
            children: [
              Image.asset(
                Assets.imagesCircle,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4),
                      child: IncomeInfoItem(
                        incomeModel: incomelist[index],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
