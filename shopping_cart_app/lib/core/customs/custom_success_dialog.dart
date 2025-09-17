import 'package:flutter/material.dart';
import 'package:shopping_cart_app/core/customs/custom_button.dart';

class CustomSuccessDialog extends StatelessWidget {
  const CustomSuccessDialog({
    super.key,
    this.title,
    this.subtitle,
    required this.buttonText,
    required this.onPressed,
  });
  final String? title;
  final String? subtitle;
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16),
            Text(
              title ?? '',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              subtitle ?? '',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 16),
            CustomButton(
              text: buttonText,
              onPressed: onPressed,
              buttonBackgroundColor: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
