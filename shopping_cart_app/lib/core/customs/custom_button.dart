import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  final Color? buttonBackgroundColor;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    this.buttonBackgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonBackgroundColor ?? Color(0xFF9333ea),
            shape : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => onPressed(),
          child: Text(
            text,
            style:
                textStyle ??
                TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold , height: 3),
          ),
        ),
      ),
    );
  }
}
