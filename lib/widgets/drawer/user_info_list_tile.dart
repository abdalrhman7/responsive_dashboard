import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/model/user_info_model.dart';
import 'package:responsive/utils/app_style.dart';



class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
            leading: SvgPicture.asset(
              userInfoModel.image,
            ),
            title: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                userInfoModel.name,
                style: AppStyle.styleSemiBold16(context),
              ),
            ),
            subtitle: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                userInfoModel.supTitle,
                style: AppStyle.styleRegular12(context),
              ),
            )),
      ),
    );
  }
}
