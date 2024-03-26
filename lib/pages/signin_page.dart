import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/nav_pages/discover.dart';
import 'package:motionhack/pages/signup_page.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/theme/app_color.dart';
import 'package:motionhack/widget/button_custom.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final controllerEmail = TextEditingController();
  bool isPasswordHidden = true;
  final controllerPassword = TextEditingController();
  final formkey = GlobalKey<FormState>();

  signin(BuildContext context) {
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Discover()),
      );
    }
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 106,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nama App.",
                      style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  inputEmail(),
                  const SizedBox(
                    height: 16,
                  ),
                  inputPassword(),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lupa Password?",
                      style: GoogleFonts.poppins(
                          //decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primary),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ButtonCustom(
                    label: "Login sekarang",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Discover()));
                    },
                    isExpand: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Belum Punya Akun? ',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFAFAFAF),
                      ),
                      children: [
                        TextSpan(
                          text: 'Daftar',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Atau",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF444444),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  signWithApple(),
                  const SizedBox(
                    width: 12,
                  ),
                  signWithGoogle(),
                  const SizedBox(
                    width: 12,
                  ),
                  signWithPhone(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card signWithPhone() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFFE7E7E7),
          )),
      color: const Color(0xFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              "Masuk dengan No.Handphone",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  color: const Color(0xFF444444),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Card signWithGoogle() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFFE7E7E7),
          )),
      color: const Color(0xFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logoGoogle,
              width: 24,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Masuk dengan Google",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  color: const Color(0xFF444444),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField inputPassword() {
    return TextFormField(
      controller: controllerPassword,
      obscureText: isPasswordHidden,
      validator: (value) =>
          value == "" ? 'Kamu harus mengisi username dan password' : null,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFF1F1F1),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: "Password",
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF7A7A7A),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.primary),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isPasswordHidden = !isPasswordHidden;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              isPasswordHidden
                  ? FluentSystemIcons.ic_fluent_eye_hide_regular
                  : FluentSystemIcons.ic_fluent_eye_show_regular,
              color: const Color(0xFFAEAECF),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField inputEmail() {
    return TextFormField(
      controller: controllerEmail,
      validator: (value) =>
          value == "" ? 'Kamu harus mengisi username dan password' : null,
      decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintText: "Username atau email",
          hintStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7A7A7A),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColor.primary),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    );
  }

  Card signWithApple() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFFE7E7E7),
          )),
      color: const Color(0xFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logoApple,
              width: 24,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Masuk dengan Apple",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  color: const Color(0xFF444444),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
