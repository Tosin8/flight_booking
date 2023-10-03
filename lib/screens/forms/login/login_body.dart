import 'package:flight_booking/widgets/constants.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Image.asset("assets/logo-black-form.png"),
          const Text(
            'Kindly provide your login details below',
            style: TextStyle(
                color: kSecondaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
