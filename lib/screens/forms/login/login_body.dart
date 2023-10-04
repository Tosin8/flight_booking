import 'package:flight_booking/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../form_widgets.dart';

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
                const EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
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
                    const SizedBox(height: 10),
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kPrimaryColor)),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 14.0, left: 10),
                              suffixIcon:
                                  Icon(Icons.email, color: Colors.black),
                              hintText: 'Enter your email'),
                        )),
                    SizedBox(height: 20),
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kPrimaryColor)),
                        child: const TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 14.0, left: 10),
                              suffixIcon: Icon(Icons.lock, color: Colors.black),
                              hintText: 'Enter your password'),
                        )),
                    SizedBox(height: 50),
                    btn(),
                  ],
                ),
              ),
            ]),
          ))
    ]);
  }
}
