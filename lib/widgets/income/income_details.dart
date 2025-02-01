import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';

import '../../model/income_item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeItemDetailsModel> items = [
    IncomeItemDetailsModel(
      color: Color(0xFF208CC8),
      title: 'Design service',
      value: '%40',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      value: '%25',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFF064061),
      title: 'Product royalti',
      value: '%25',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      value: '%22',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(incomeItemDetailsModel: e)).toList(),
    );
    //   ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(incomeItemDetailsModel: items[index]);
    //   },
    // );
  }
}
