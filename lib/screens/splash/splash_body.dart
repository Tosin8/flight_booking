import 'package:flutter/material.dart';

import '../../widgets/constants.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/bkg.jpg',
                  )))),
      Positioned(
          right: 20, top: 30, child: Image.asset('assets/logo-white.png')),
      const Positioned(
        bottom: 180,
        left: 20,
        child: Text(
          'Easy Way to\nYour Next\nDestination',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      const Positioned(
        bottom: 100,
        left: 20,
        child: Text(
          'Fly with us for luxury flight\nexperience,easy,quick and\naffordable deals.',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      Positioned(
        bottom: 30,
        left: 50,
        child: GestureDetector(
          onTap: () {},
          child: Container(
              height: 56,
              width: 314,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: kPrimaryColor,
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              )),
        ),
      ),
    ]);
  }
}
