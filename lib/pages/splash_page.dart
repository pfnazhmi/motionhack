import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motionhack/pages/onboarding/onboarding_main_page.dart';
import 'package:motionhack/theme/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnboardingMain(),
          ),
          (route) => false);
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image.asset(
          AppAssets.logoApp,
          height: 250,
          width: 250,
        )),
      ),
    );
  }
}
