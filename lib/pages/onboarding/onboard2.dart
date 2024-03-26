import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_assets.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.onboarding2,
          ),
          const SizedBox(height: 32),
          Text(
            "Temukan Informasi Penting",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 22),
          Text(
            "Kami juga menyediakan informasi tentang program bantuan pangan pemerintah",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
