import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});

  final Color? backgroundColor , textColor;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ??  const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {},
        child:  Text(
          'Send Money',
          style: AppStyle.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
