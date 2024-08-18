import 'package:animated_introduction/animated_introduction.dart';
import 'package:earn_app/view/AuthPage/loginPage.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final List<SingleIntroScreen> pages = [
      const SingleIntroScreen(
        title: 'Welcome to Reward Genie!',
        description:
            'Earn rewards with every action you take. From shopping to completing tasks, we turn your activities into exciting rewards!',
        imageAsset: 'assets/onboard/onboard1.png',
        sideDotsBgColor: Colors.white,
        mainCircleBgColor: Colors.white,
      ),
      const SingleIntroScreen(
        title: 'Earn Points with Every Interaction',
        description:
            'Collect points by making purchases, completing surveys, and more. Your points add up to incredible rewards!',
        imageAsset: 'assets/onboard/onboard2.png',
        sideDotsBgColor: Colors.white,
        mainCircleBgColor: Colors.white,
      ),
      const SingleIntroScreen(
        title: 'Redeem Rewards and Enjoy!',
        description:
            'Use your points to unlock discounts, special offers, and exclusive rewards. The more you earn, the more you get!',
        imageAsset: 'assets/onboard/onboard3.png',
        sideDotsBgColor: Colors.white,
        mainCircleBgColor: Colors.white,
      ),
    ];

    return Scaffold(
      body: AnimatedIntroduction(
        slides: pages,
        indicatorType: IndicatorType.circle,
        footerBgColor: Color.fromARGB(255, 21, 17, 86),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));

          /// TODO: Go to desire page like login or home
        },
      ),
    );
  }
}
