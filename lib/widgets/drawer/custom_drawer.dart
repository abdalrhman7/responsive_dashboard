import 'package:flutter/material.dart';

import '../../model/drawer_item_model.dart';
import '../../model/user_info_model.dart';
import 'drawer_item.dart';
import 'drawer_items_list_view.dart';
import 'user_info_list_tile.dart';



class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                name: 'Lekan Okeowo',
                supTitle: 'demo@gmail.com',
                image: 'assets/images/avater_3.svg',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
              child: Column(
            children: [
              Expanded(child: SizedBox(height: 20)),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Setting System',
                    image: 'assets/images/setting_system.svg'),
              ),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Logout', image: 'assets/images/logout.svg'),
              ),
              SizedBox(height: 48),
            ],
          )),
        ],
      ),
    );
  }
}
