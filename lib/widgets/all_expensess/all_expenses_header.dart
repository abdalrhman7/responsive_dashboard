import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';

import '../drawer/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20(context),
        ),
        const RangeOptions()
      ],
    );
  }
}
