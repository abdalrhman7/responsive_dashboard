

import 'package:flutter/material.dart';

import '../../model/income_item_details_model.dart';
import '../../utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeItemDetailsModel});

  final IncomeItemDetailsModel incomeItemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(incomeItemDetailsModel.title, style: AppStyle.styleRegular16(context)),
      trailing: Text(
        incomeItemDetailsModel.value,
        style: AppStyle.styleMedium16(context),
      ),
    );
  }
}