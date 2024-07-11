import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_listtile_info.dart';

class QuickInvoiceList extends StatelessWidget {
  const QuickInvoiceList({super.key});

  static const List<UserInfoModel> mylist = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'MadraniAndi@gmail.com',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'JosuaNunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Emam Ashour',
        subtitle: 'emamAshour@gmail.com',
        image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mylist
            .map((e) =>
                IntrinsicWidth(child: UserListTileInfo(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
