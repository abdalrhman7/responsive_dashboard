import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Income',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:  Row(
              children:[
                Text(
                  'Monthly',
                  style: AppStyle.styleMedium16(context),
                ),
               const SizedBox(width: 16),
              const  Icon(
                  Icons.keyboard_arrow_down,
                ),
              ]
          ),
        ),
      ],
    );
  }
}