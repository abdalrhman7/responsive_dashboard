import 'package:flutter/material.dart';
import 'package:responsive/utils/size_config.dart';

import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        ))
        : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 2, child: IncomeDetails()),
      ],
    );
  }

// return SizeConfig.width >= SizeConfig.desktop && SizeConfig.width < 1750
// ? const SizedBox()
//     : const Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(child: IncomeChart()),
// Expanded(flex: 2, child: IncomeDetails()),
// ],
// );
}
