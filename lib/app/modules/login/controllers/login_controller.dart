import 'package:flutter/material.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email and Password cannot be empty')),
      );
      return;
    }

    // Dummy login validation
    if (email == "test@example.com" && password == "password123") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successful')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Email or Password')),
      );
    }
  }
}
