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
                icon: Image.asset(
                  'assets/images/left_arrow.png',
                  width: 30,
                  height: 30,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                "Detail Makanan",
                style: GoogleFonts.poppins(
                  color: AppColor.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
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
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "The Harvest Cake",
                style: GoogleFonts.poppins(
                  color: AppColor.dark,
                  fontSize: 24,
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
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/images/minus.png',
                          width: 90,
                          height: 90,
                        ),
                        onPressed: () => (),
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.poppins(
                          color: AppColor.dark,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/images/plus.png',
                          width: 30,
                          height: 30,
                        ),
                        onPressed: () => (),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
