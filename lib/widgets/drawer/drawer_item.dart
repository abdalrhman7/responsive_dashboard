

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/model/drawer_item_model.dart';
import 'package:responsive/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel ;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive  ?  ActiveDrawerItem(drawerItemModel: drawerItemModel) : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
          child: Text(drawerItemModel.title , style: AppStyle.styleRegular16(context),)),
      // onTap: drawerItemModel.onTap,
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title , style: AppStyle.styleBold16(context),),
      trailing: Container(
        width: 4,

        decoration: BoxDecoration(
          color: const Color(0xFF4EB7f2),
          borderRadius: BorderRadius.circular(2),
        ),
      )
      // onTap: drawerItemModel.onTap,
    );
  }
}
