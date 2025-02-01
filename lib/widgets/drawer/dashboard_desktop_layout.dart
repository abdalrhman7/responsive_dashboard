import 'package:flutter/material.dart';
import 'package:responsive/widgets/my_card/my_card.dart';

import '../all_expensess/all_expensess.dart';
import '../income/income_section.dart';
import '../my_card/card_page_view.dart';
import '../my_card/my_card_and_transction_history_section.dart';
import '../my_card/my_card_section.dart';
import '../my_card/transaction_history.dart';
import '../quick_invoice_widget/quick_invoice.dart';
import 'custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                      children:[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: AllExpensesAndQuickInvoiceSection(),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 40),
                                child: MyCardAndTransactionHistory(),
                              ),
                              SizedBox(height: 24),
                              Expanded(child: IncomeSection()),
                            ],
                          ),
                        ),
                      ]
                  ),
                )
              ],
          ),
        )
      ],
    );
  }
}

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // SizedBox(height: 30),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
