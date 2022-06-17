import 'package:e_wallet/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.grey,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Wallet',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingPage(),
    );
  }
}

