import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_inactive_darwer_item.dart';
import 'package:responsive_dashboard/widgets/custom_list_drawer_items.dart';
import 'package:responsive_dashboard/widgets/user_listtile_info.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<DrawerItemModel> drawerList = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesTransaction, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatices, title: 'Statistics'),
    const DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesMyinvestments, title: 'My Investment'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 28, right: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: UserListTileInfo(
                  userInfoModel: UserInfoModel(
                title: 'Khaled Gamal',
                subtitle: 'kghaly@gmail.com',
                image: Assets.imagesLogo2,
              )),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            CustomListDrawerItems(drawerlist: drawerList),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 30,
                  )),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSetting2, title: 'Setting system'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout account'),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
