import 'package:flutter/material.dart';
import 'package:responsive/model/transaction_model.dart';
import 'package:responsive/widgets/my_card/trransaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: '\$ 20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$ 2000',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$ 20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    //   ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap:   true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    // );
  }
}
