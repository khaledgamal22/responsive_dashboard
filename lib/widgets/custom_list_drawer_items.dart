import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class CustomListDrawerItems extends StatefulWidget {
  const CustomListDrawerItems({super.key, required this.drawerlist});

  final List<DrawerItemModel> drawerlist;

  @override
  State<CustomListDrawerItems> createState() => _CustomListDrawerItemsState();
}

class _CustomListDrawerItemsState extends State<CustomListDrawerItems> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.drawerlist.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: widget.drawerlist[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      }),
    );
  }
}
