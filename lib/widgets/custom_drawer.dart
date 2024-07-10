import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_inactive_darwer_item.dart';
import 'package:responsive_dashboard/widgets/custom_list_drawer_items.dart';
import 'package:responsive_dashboard/widgets/user_listtile_info.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<DrawerItemModel> drawerList = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatices, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyinvestments, title: 'My Investment'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 28, right: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: UserListTileInfo(
                title: 'Khaled Gamal',
                subTitle: 'kghaly@gmail.com',
                image: Assets.imagesLogo2,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            CustomListDrawerItems(drawerlist: drawerList),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSetting2, title: 'Setting system'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout account'),
                  ),
                  const SizedBox(
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
