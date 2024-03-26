import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motionhack/firebase_options.dart';
import 'package:motionhack/models/user.dart';
import 'package:motionhack/pages/discover_page.dart';
import 'package:motionhack/pages/navigation.dart';
import 'package:motionhack/pages/onboarding/onboarding_main_page.dart';
import 'package:motionhack/pages/payment_page.dart';
import 'package:motionhack/pages/payment_success.dart';
import 'package:motionhack/pages/profile_page.dart';
import 'package:motionhack/pages/signin_page.dart';
import 'package:motionhack/pages/splash_page.dart';
import 'package:motionhack/theme/app_route.dart';
import 'package:motionhack/theme/session.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) {
          return FutureBuilder(
            future: Session.getUser(User()),
            builder: (context, AsyncSnapshot<User> snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return const Navigation();
              } else {
                return const SplashPage();
              }
            },
          );
        },
        Approute.splash: (context) => const SplashPage(),
        Approute.onboardingPage: (context) => const OnboardingMain(),
        Approute.signin: (context) => const SigninPage(),
        Approute.nav: (context) => const Navigation(),
        Approute.discover: (context) => const DiscoverPage(),
        Approute.profile: (context) => const ProfilePage(),
        Approute.payment: (context) => const PaymentPage(),
        Approute.paymentSuccess: (context) => const PaymentSuccessPage(),
      },
    );
  }
}
