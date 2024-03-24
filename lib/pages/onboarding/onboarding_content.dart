import 'package:flutter/material.dart';
import 'package:motionhack/pages/onboarding/onboarding_page.dart';
import 'package:motionhack/pages/signin_page.dart';
import 'package:motionhack/theme/app_assets.dart';
import 'package:motionhack/theme/app_color.dart';
import 'package:motionhack/widget/button_custom.dart';

class OnboardContent extends StatefulWidget {
  const OnboardContent({super.key});

  @override
  State<OnboardContent> createState() => _OnboardContentState();
}

class _OnboardContentState extends State<OnboardContent> {
  final Duration durationAnimation = const Duration(milliseconds: 300);

  int currentPage = 0;
  final PageController _pageController = PageController();
  List<Map<String, String>> splashData = [
    {
      "title": "Selamat Datang di namaapp",
      "text":
          "namaapp adalah  aplikasi yang membantu Anda menemukan makanan gratis atau murah di dekat Anda.",
      "image": AppAssets.onboarding1
    },
    {
      "title": "Temukan Informasi Penting",
      "text":
          "Kami juga menyediakan informasi tentang program bantuan pangan pemerintah",
      "image": AppAssets.onboarding2
    },
    {
      "title": "Bergabunglah dengan kami",
      "text":
          "Bergabunglah dengan  Pangan Pals untuk mewujudkan Indonesia bebas kelaparan dan mengurangi pemborosan makanan",
      "image": AppAssets.onboarding3
    },
  ];

  void nextPage() {
    if (currentPage < splashData.length - 1) {
      currentPage++;
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: OnboardPage(
                          title: splashData[index]["title"],
                          image: splashData[index]["image"],
                          text: splashData[index]['text'],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                splashData.length,
                (index) => AnimatedContainer(
                  duration: durationAnimation,
                  margin: const EdgeInsets.only(right: 5),
                  height: 6,
                  width: currentPage == index ? 20 : 6,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? AppColor.primary
                        : AppColor.primary,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ButtonCustom(
                  label: currentPage == splashData.length - 1
                      ? "Mulai Sekarang"
                      : "Lanjutkan",
                  onTap: () {
                    if (currentPage < splashData.length - 1) {
                      _pageController.animateToPage(
                        currentPage + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const SigninPage(),
                        ),
                      );
                    }
                  },
                  isExpand: true,
                )),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
