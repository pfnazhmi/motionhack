import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/theme/app_color.dart';

class DetailArtikelPage extends StatelessWidget {
  const DetailArtikelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primary,
        title: Text(
          'Detail Artikel',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), // Icon back
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "Pembagian Bansos - Pemkot Bandung",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
                overflow: TextOverflow.clip,
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  "https://picsum.photos/200/300",
                  width: double.infinity,
                  height: 238,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Pemerintah (Pemkot) Bandung mulai menyalurkan bantuan sosial (bansos) kepada 108.457 Keluarga Penerima Manfaat (KPM) yang terdampak kebijakan Pemberlakukan Pembatasan Kegiatan Masyarakat (PPKM) Darurat. Kemudian Program Bantuan Sosial Tunai (BST) yang bersumber dari APBD Kota Bandung. Bantuan ini akan diberikan kepada 63.617 PKM. Masing-masing penerima akan mendapat uang tunai sebesar Rp500.000",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF323232),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              cardKegiatan(context)
            ],
          ),
        ),
      ),
    );
  }

  Container cardKegiatan(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail Kegiatan",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF323232),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          itemKegiatan(context, AppAssets.iconLocation, "Dinas Sosial Bandung"),
          const SizedBox(
            height: 8,
          ),
          itemKegiatan(context, AppAssets.iconClock,
              "Senin, 21 Maret 2024 (09.00-15.00)"),
          const SizedBox(
            height: 8,
          ),
          itemKegiatan(context, AppAssets.iconPeople, "10.000 orang"),
        ],
      ),
    );
  }

  Row itemKegiatan(BuildContext context, String image, String text) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
