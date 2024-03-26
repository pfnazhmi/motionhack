import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/signin_page.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/widget/button_custom.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.onboarding3),
          const SizedBox(height: 51),
          Text(
            "Bergabunglah dengan kami",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Kami juga menyediakan informasi tentang program bantuan pangan pemerintah",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ButtonCustom(
              label: "Mulai sekarang",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninPage(),
                    ));
              },
              isExpand: true)
        ],
      ),
    );
  }
}
