import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_color.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNumController = TextEditingController();
TextEditingController addresController = TextEditingController();

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ProductDetailPage();
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ), // Icon back
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "Detail Makanan",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductDetailPage extends StatefulWidget {
  const _ProductDetailPage({Key? key}) : super(key: key);

  @override
  _MyProductDetailPage createState() => _MyProductDetailPage();
}

class _MyProductDetailPage extends State<_ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    // loadDataFirestore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FAF3),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250, // Adjust as needed
                width: double.infinity, // Adjust as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/cake.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Chocolate lava cake",
                style: GoogleFonts.poppins(
                  color: AppColor.dark,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "The Harvest Cake",
                style: GoogleFonts.poppins(
                  color: AppColor.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 20.000",
                    style: GoogleFonts.poppins(
                      color: AppColor.dark,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/images/minus.png',
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () => (),
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.poppins(
                          color: AppColor.dark,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/images/plus.png',
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () => (),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/star.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    "4.5",
                    style: GoogleFonts.poppins(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " (30+) ",
                    style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See Review",
                    style: GoogleFonts.poppins(
                      color: AppColor.primary,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.primary,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/button_bag.png', // Path to your icon image
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                    SizedBox(
                        width: 8), // Adjust the space between icon and text
                    Text(
                      'Masukkan keranjang',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
