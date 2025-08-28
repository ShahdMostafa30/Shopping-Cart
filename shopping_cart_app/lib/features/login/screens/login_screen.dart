import 'package:flutter/material.dart';
import 'package:shopping_cart_app/core/customs/custom_button.dart';
import 'package:shopping_cart_app/core/customs/custom_text_field.dart';
import 'package:shopping_cart_app/features/shopping/shopping_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 32, color: Color(0xFF7454af)),
              ),
              SizedBox(height: 10),
              Text(
                'Sign in to ShopCraft',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
              CustomTextField(label: 'Email', hint: 'Enter your mail'),
              CustomTextField(label: 'Password', hint: 'Enter your password'),
              CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShoppingScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
