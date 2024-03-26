import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/payment_page.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/widget/button_custom.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Keranjang saya ',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: '(4)',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
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
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false, // Atur keadaan checkbox sesuai kebutuhan
                    onChanged: (newValue) {
                      // Logika ketika checkbox diubah
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ), // Memberikan jarak antara checkbox dan teks "Si Toko"
                  Text(
                    'The Harvest Cakes',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              cardKeranjang(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total: Rp 120.000", // Ganti dengan harga total sesuai dengan kebutuhan Anda
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              ButtonCustom(
                  label: "Beli",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                  isExpand: false)
            ],
          ),
        ),
      ),
    );
  }

  Container cardKeranjang() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: false,
            onChanged: (newValue) {
              // Logika ketika checkbox diubah
            },
          ),
          const SizedBox(
            width: 16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 120,
              height: 90,
              child: Image.network(
                "https://picsum.photos/200/300",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cup cake",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Rp 30.000",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(AppAssets.iconKurang),
                      onPressed: () {
                        // Logika ketika tombol kurang diklik
                      },
                    ),
                    Text(
                      "1",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(AppAssets.icontambah),
                      onPressed: () {
                        // Logika ketika tombol tambah diklik
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
