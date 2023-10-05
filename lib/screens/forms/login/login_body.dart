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
                    Image.asset("assets/icons/logo-black-form.png"),
                    const Text(
                      'Kindly provide your login details below',
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 30),
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kPrimaryColor)),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 14.0, left: 10),
                              suffixIcon:
                                  Icon(Icons.email, color: Colors.black),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.1))),
                        )),
                    const SizedBox(height: 20),
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kPrimaryColor)),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 14.0, left: 10),
                              suffixIcon: Icon(Icons.lock, color: Colors.black),
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.2))),
                        )),
                    const SizedBox(height: 50),
                    const btnLogin(),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('-'),
                        SizedBox(width: 10),

                        // Socail Card instructions
                        Text(
                          'Or Sign In with ',
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Text('-'),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Social Card Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(
                          icon: 'assets/icons/apple.png',
                          press: () {},
                        ),
                        const SizedBox(width: 30),
                        SocialCard(
                          icon: 'assets/icons/gmail.png',
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    const Text(
                      'Create Account',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        //decoration: TextDecoration.underline
                      ),
                    ),
                    SizedBox(height: 10),
                    const Text('Reset Password',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          //  decoration: TextDecoration.underline
                        ))
                  ],
                ),
              ),
            ]),
          ))
    ]);
  }
}
