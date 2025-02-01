import 'package:flutter/material.dart';

import 'package:responsive/widgets/quick_invoice_widget/title_text_field.dart';

import 'custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer name' , hint: 'Type customer name')),
            SizedBox(height: 16),
            Expanded(child: TitleTextField(title: 'Customer email' , hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item name' , hint: 'Type customer name')),
            SizedBox(height: 16),
            Expanded(child: TitleTextField(title: 'Item mount' , hint: 'USD')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomButton(backgroundColor: Colors.transparent,textColor:   Color(0xFF4DB7F2),)),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
