import 'package:flutter/material.dart';
import 'package:responsive/widgets/quick_invoice_widget/quick_invoice_form.dart';
import 'package:responsive/widgets/quick_invoice_widget/quick_invoice_header.dart';

import '../drawer/custom_background_container.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48),
          QuickInvoiceForm(),

        ],
      ),
    );
  }
}


