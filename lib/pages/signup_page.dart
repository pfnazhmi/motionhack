import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/signin_page.dart';
import 'package:motionhack/pages/signup_page.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/theme/app_color.dart';
import 'package:motionhack/widget/button_custom.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmPassword = TextEditingController();
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
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
                  inputConfirmPassword(),
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
                    label: "Daftar sekarang",
                    onTap: () {},
                    isExpand: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Sudah Punya Akun? ',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFAFAFAF),
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SigninPage()));
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

  TextFormField inputConfirmPassword() {
    return TextFormField(
      controller: controllerConfirmPassword,
      obscureText: isConfirmPasswordHidden,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Masukan, jangan kosong!';
        } else if (value != controllerPassword.text) {
          return 'Password tidak cocok!';
        }
        return null;
      },
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFF1F1F1),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: "Konfirmasi Password",
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
              isConfirmPasswordHidden = !isConfirmPasswordHidden;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              isConfirmPasswordHidden
                  ? FluentSystemIcons.ic_fluent_eye_hide_regular
                  : FluentSystemIcons.ic_fluent_eye_show_regular,
              color: const Color(0xFFAEAECF),
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
      validator: (value) => value == "" ? "Masukan, jangan kosong!" : null,
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
      validator: (value) => value == "" ? "Masukan, jangan kosong!" : null,
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
