import 'package:flutter/material.dart';

import '../../widgets/constants.dart';

class btnLogin extends StatelessWidget {
  const btnLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 56,
          width: 314,
          decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: kPrimaryColor,
          ),
          child: const Center(
            child: Text(
              'Log In',
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.icon,
    required this.press,
  });

  final String icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Image.asset(icon),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kPrimaryColor),
                    gapPadding: 10),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kSecondaryColor))),
          ),
          SizedBox(height: 15),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kPrimaryColor),
                    gapPadding: 10),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kSecondaryColor))),
          ),
        ],
      ),
    );
  }
}
