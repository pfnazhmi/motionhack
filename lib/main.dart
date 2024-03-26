import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motionhack/firebase_options.dart';
import 'package:motionhack/models/user.dart';
import 'package:motionhack/pages/discover_page.dart';
import 'package:motionhack/pages/keranjang_page.dart';
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
                return Navigation();
              } else {
                return KeranjangPage();
              }
            },
          );
        },
        Approute.splash: (context) => const SplashPage(),
        Approute.onboardingPage: (context) => OnboardingMain(),
        Approute.signin: (context) => SigninPage(),
        Approute.nav: (context) => Navigation(),
        Approute.discover: (context) => DiscoverPage(),
        Approute.profile: (context) => ProfilePage(),
        Approute.payment: (context) => PaymentPage(),
        Approute.paymentSuccess: (context) => PaymentSuccessPage(),
      },
    );
  }
}
