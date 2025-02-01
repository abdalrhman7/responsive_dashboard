import 'package:flutter/material.dart';

import '../drawer/dashboard_desktop_layout.dart';
import '../income/income_section.dart';
import '../my_card/my_card_and_transction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistory(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}