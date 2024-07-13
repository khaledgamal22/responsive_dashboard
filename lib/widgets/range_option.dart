import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyle.styleRegular16(context),
          ),
          const SizedBox(
            width: 16,
          ),
          Icon(
            FontAwesomeIcons.angleDown,
            size: 20,
            color: const Color(0xff064061).withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
