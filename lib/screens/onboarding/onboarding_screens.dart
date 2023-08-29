import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rent_portal/colors.dart';

import '../auth/sign_up_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: blackColor,
      bodyPadding: const EdgeInsets.all(12),

      pages: [
        PageViewModel(
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.only(top: 50),
            bodyPadding: EdgeInsets.all(0),
          ),
          titleWidget: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Discover the\nFreedom of Mobility",
              style: TextStyle(
                color: greenColor,
                fontSize: 35,
                fontFamily: "PoppinsBold",
              ),
            ),
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to VRent, your gateway to\nhassle-free car rentals. Unlock the joy of\nexploring new places, visiting loved ones,\nand embarking on memorable journeys\nwith our diverse fleet of rental cars.",
                style: TextStyle(
                  color: grey,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/car_image.png"),
                        fit: BoxFit.contain)),
              )
            ],
          ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.only(top: 50),
            bodyPadding: EdgeInsets.all(0),
          ),
          titleWidget: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Your Needs is\nimportant",
              style: TextStyle(
                color: greenColor,
                fontSize: 35,
                fontFamily: "PoppinsBold",
              ),
            ),
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Our app puts you in control. Choose from a\nwide range of vehicles – from sleek sedans\nto spacious SUVs – all designed to cater to\nyour specific requirements.",
                style: TextStyle(
                  color: grey,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/civic.png"),
                        fit: BoxFit.contain)),
              )
            ],
          ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.only(top: 50),
            bodyPadding: EdgeInsets.all(0),
          ),
          titleWidget: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Smooth Booking\nProcess",
              style: TextStyle(
                color: greenColor,
                fontSize: 35,
                fontFamily: "PoppinsBold",
              ),
            ),
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Say goodbye to long queues and\ncomplicated booking procedures. Our\nuser-friendly interface, secure payment\noptions, and real-time updates ensure a\nstress-free experience from reservation to\nreturn. Get ready for a journey without the\nhassle.",
                style: TextStyle(
                  color: grey,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ux_ui.png"),
                        fit: BoxFit.contain)),
              )
            ],
          ),
        ),
      ],
      dotsDecorator: const DotsDecorator(
        activeColor: greenColor,
        color: grey,
      ),

      onDone: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpScreen()));
      },
      onSkip: () {}, // You can override onSkip callback
      showSkipButton: false,
      showDoneButton: true,
      showNextButton: false,
      done: const Text(
        "Get Started",
        style: TextStyle(color: greenColor, fontFamily: "PoppinsBold"),
      ),
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
    );
  }
}
