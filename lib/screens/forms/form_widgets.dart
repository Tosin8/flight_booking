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
