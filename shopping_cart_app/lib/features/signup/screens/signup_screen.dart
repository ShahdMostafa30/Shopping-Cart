import 'package:flutter/material.dart';
import 'package:shopping_cart_app/core/customs/custom_button.dart';
import 'package:shopping_cart_app/core/customs/custom_success_dialog.dart';
import 'package:shopping_cart_app/core/customs/custom_text_field.dart';
import 'package:shopping_cart_app/core/validations/validations.dart';
import 'package:shopping_cart_app/features/shopping/screens/shopping_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
              CustomTextField(
                label: 'Full Name',
                hint: 'Enter your full name',
                controller: name,
                validator: (name) => Validations.validateFullName(name),
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
                obscureText: true,
              ),
              CustomTextField(
                label: 'Confirm Password',
                hint: 'Confirm your password',
                controller: confirmPass,
                validator:
                    (confirmPass) =>
                        Validations.validateConfirmPass(confirmPass, pass.text),
                obscureText: true,
              ),
              CustomButton(
                text: 'Create Account',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await showDialog(
                      context: context,
                      builder:
                          (context) => CustomSuccessDialog(
                            title: 'Success!',
                            subtitle: 'Account created successfully',
                            buttonText: 'Close',
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ShoppingScreen(),
                                ),
                              );
                            },
                          ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
