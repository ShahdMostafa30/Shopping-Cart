import 'package:flutter/material.dart';
import 'package:shopping_cart_app/core/customs/custom_button.dart';
import 'package:shopping_cart_app/core/customs/custom_text_field.dart';
import 'package:shopping_cart_app/features/shopping/shopping_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 64),
            Text(
              'Create Account',
              style: TextStyle(fontSize: 32, color: Color(0xFF7454af)),
            ),
            SizedBox(height: 10),
            Text(
              'Join ShopCraft today',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            CustomTextField(label: 'Full Name', hint: 'Enter your full name'),
            CustomTextField(label: 'Email', hint: 'Enter your mail'),
            CustomTextField(label: 'Password', hint: 'Enter your password'),
            CustomTextField(
              label: 'Confirm Password',
              hint: 'Confirm your password',
            ),
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShoppingScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
