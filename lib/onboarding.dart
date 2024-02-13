
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:veuzgift_app/loginpage.dart';

import 'getstarted.dart';


class Onboarding extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF1EB1AB);

  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),

      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff000000),
          fontWeight: FontWeight.w400,
          fontFamily: 'Tenor Sans'
        ),
      ),
      trailing: Text(
        'Skip',
        style: TextStyle(
            fontSize: 18,
            color: Color(0xff000000),
            fontWeight: FontWeight.w400,
            fontFamily: 'Tenor Sans'
        ),
      ),
      trailingFunction: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => const LoginPage(),
        //   ),
        // );
      },
      controllerColor:Color(0xff17223B),
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 45.0,
            vertical: 150.0,
          ),
          child: SvgPicture.asset("assets/images/onboarding 1.svg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35.0,
            vertical: 170.0,),
          child: SvgPicture.asset("assets/images/onboarding 2.svg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 25.0,
              vertical: 130.0),
          child: SvgPicture.asset("assets/images/onboarding 3.svg"),
        ),

      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Choose Products',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff2E3234),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA8A8A9),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Make Payment',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff2E3234),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA8A8A9),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Get Your Order',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff2E3234),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA8A8A9),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}