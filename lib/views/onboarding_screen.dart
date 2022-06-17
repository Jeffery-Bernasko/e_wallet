import 'package:e_wallet/views/slider_layout_view.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({ Key? key }) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SliderLayoutView(),
      )
    );
  }

//  Widget onBoardingBody() => Container(
//   child: const SliderLayoutView(),
//  );
  
 
}