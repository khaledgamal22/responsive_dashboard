import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: Image.asset(userInfoModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.title,
              style: AppStyle.styleSemibold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.subtitle,
              style: AppStyle.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
