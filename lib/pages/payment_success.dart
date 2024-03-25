import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/theme/app_color.dart';
import 'package:motionhack/widget/button_custom.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF6F6F6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 6,
                color: const Color(0xFFFAFAFA),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(AppAssets.sukses),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Pembelian Sukses",
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColor.primary),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Belanja Mudah, Hemat Menuju\nMasa Depan Lebih Baik",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: ButtonCustom(
              label: "Kembali ke beranda",
              //Sementara aja
              onTap: () {},
              isExpand: true,
            ),
          )
        ],
      ),
    );
  }
}
