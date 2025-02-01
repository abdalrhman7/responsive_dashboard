import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';
import 'package:responsive/widgets/my_card/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyle.styleMedium16(context).copyWith(color: const Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
