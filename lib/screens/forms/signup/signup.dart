import 'package:flutter/material.dart';

import 'signup_body.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBody(),
    );
  }
}
