import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';

import 'custom_text_faild.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title , hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Customer name' , style: AppStyle.styleMedium16(context),),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
