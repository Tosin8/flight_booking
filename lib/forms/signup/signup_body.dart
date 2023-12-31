import 'package:flight_booking/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../form_widgets.dart';
import '../resetpass/reset.dart';
import 'signup.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(),
        ),
        Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          const SignInForm(),
                          const SizedBox(height: 50),
                          const btnSignUp(),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('-'),
                              SizedBox(width: 10),

                              // Socail Card instructions
                              Text(
                                'Or Sign Up with ',
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

                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignUpForm()));
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                //decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResetForm()));
                            },
                            child: const Text('Reset Password',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  //  decoration: TextDecoration.underline
                                )),
                          )
                        ],
                      ),
                    ),
                  ]),
            ))
      ],
    );
  }
}
