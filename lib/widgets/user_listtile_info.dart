import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: AppStyle.styleSemibold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
