import 'package:flutter/material.dart';
import 'package:shopping_cart_app/core/customs/custom_button.dart';
import 'package:shopping_cart_app/core/customs/custom_success_dialog.dart';
import 'package:shopping_cart_app/core/customs/custom_text_field.dart';
import 'package:shopping_cart_app/core/validations/validations.dart';
import 'package:shopping_cart_app/features/shopping/screens/shopping_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
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
                CustomTextField(
                  label: 'Email',
                  hint: 'Enter your mail',
                  controller: email,
                  validator: (email) => Validations.validateEmail(email),
                ),
                CustomTextField(
                  label: 'Password',
                  hint: 'Enter your password',
                  controller: pass,
                  validator: (pass) => Validations.validatePassword(pass),
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await showDialog(
                        context: context,
                        builder:
                            (context) => CustomSuccessDialog(
                              title: 'Welcome!',
                              subtitle: 'Account sign-in successfully',
                              buttonText: 'Close',
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShoppingScreen(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
