import 'package:flutter/material.dart';
import 'package:motionhack/pages/artikel_page.dart';
import 'package:motionhack/pages/payment_page.dart';
import 'package:motionhack/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PaymentPage(),
    );
  }
}
