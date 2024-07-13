import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class CustomIncomeChart extends StatefulWidget {
  const CustomIncomeChart({super.key});

  @override
  State<CustomIncomeChart> createState() => _CustomIncomeChartState();
}

class _CustomIncomeChartState extends State<CustomIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietoudhresponse) {
          activeIndex =
              pietoudhresponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: activeIndex == 0
              ? AppStyle.styleMedium16(context)
              : AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          radius: activeIndex == 0 ? 70 : 60,
          titlePositionPercentageOffset: activeIndex == 0 ? 1.2 : null,
          color: Color(0xff208CC8),
          value: 40,
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design Product' : '25%',
          titleStyle: activeIndex == 1
              ? AppStyle.styleMedium16(context)
              : AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          radius: activeIndex == 1 ? 70 : 60,
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
          color: Color(0xff4EB7F2),
          value: 25,
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: activeIndex == 2
              ? AppStyle.styleMedium16(context)
              : AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          radius: activeIndex == 2 ? 70 : 60,
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          color: Color(0xff064061),
          value: 20,
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Others' : '22%',
          titleStyle: activeIndex == 3
              ? AppStyle.styleMedium16(context)
              : AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          radius: activeIndex == 3 ? 70 : 60,
          titlePositionPercentageOffset: activeIndex == 3 ? 1.3 : null,
          color: Color(0xffE2DECD),
          value: 22,
        ),
      ],
    );
  }
}
