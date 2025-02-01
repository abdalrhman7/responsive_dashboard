import 'package:flutter/material.dart';


import '../drawer/custom_background_container.dart';
import 'all_expenses_items_list_view.dart';
import 'all_exspensses_item.dart';
import '../all_expensess/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}


