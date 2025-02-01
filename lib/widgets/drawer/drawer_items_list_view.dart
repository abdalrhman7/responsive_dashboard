import 'package:flutter/material.dart';
import 'package:responsive/model/drawer_item_model.dart';

import 'drawer_item.dart';


class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', image: 'assets/images/dashboard.svg'),
    DrawerItemModel(
        title: 'My Transaction', image: 'assets/images/my_transaction.svg'),
    DrawerItemModel(title: 'Statistics', image: 'assets/images/statistics.svg'),
    DrawerItemModel(
        title: 'Wallet Account', image: 'assets/images/wallet_account.svg'),
    DrawerItemModel(
        title: 'My Investments', image: 'assets/images/my_investments.svg'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                {
                  activeIndex = index;
                }
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
                drawerItemModel: items[index], isActive: activeIndex == index),
          ),
        );
      },
    );
  }
}
