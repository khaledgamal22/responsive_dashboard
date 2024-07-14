import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/models/all_expenses_card_model.dart';

class AllExpensesCardHeader extends StatelessWidget {
  const AllExpensesCardHeader({
    super.key,
    required this.cardModel,
    required this.iconColor,
  });

  final AllExpensesCardModel cardModel;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  color: Colors.white10,
                ),
                child: Image.asset(
                  cardModel.icon,
                  color: iconColor,
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        const Icon(FontAwesomeIcons.chevronRight),
      ],
    );
  }
}
