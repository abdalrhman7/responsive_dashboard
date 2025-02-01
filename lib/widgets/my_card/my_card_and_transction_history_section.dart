import 'package:flutter/material.dart';
import 'package:responsive/widgets/drawer/custom_background_container.dart';
import 'package:responsive/widgets/my_card/my_card_section.dart';
import 'package:responsive/widgets/my_card/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
