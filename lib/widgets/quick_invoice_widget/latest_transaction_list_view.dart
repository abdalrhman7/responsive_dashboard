import 'package:flutter/material.dart';

import '../../model/user_info_model.dart';
import '../drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        name: 'Madrani Andi',
        supTitle: 'Madraniadi20@gmail',
        image: 'assets/images/avater_1.svg'),
    UserInfoModel(
        name: 'Josua Nunito',
        supTitle: 'Josh Nunito@gmail.com',
        image: 'assets/images/avater_2.svg'),
    UserInfoModel(
        name: 'Madrani Andi',
        supTitle: 'Madraniadi20@gmail',
        image: 'assets/images/avater_3.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: e),
                ),
              )
              .toList()),
    );

    //   SizedBox(
    //   height: 80 ,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));
    //     },
    //   ),
    // );
  }
}
