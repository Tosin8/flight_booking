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
    return Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(),
      ),
      Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Image.asset("assets/logo-black-form.png"),
                    const Text(
                      'Kindly provide your login details below',
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ]),
          ))
    ]);
  }
}
