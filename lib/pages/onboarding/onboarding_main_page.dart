import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/onboarding/onboard1.dart';
import 'package:motionhack/pages/onboarding/onboard2.dart';
import 'package:motionhack/pages/onboarding/onboard3.dart';
import 'package:motionhack/theme/app_color.dart';

class OnboardingMain extends StatefulWidget {
  const OnboardingMain({super.key});

  @override
  State<OnboardingMain> createState() => _OnboardingMainState();
}

class _OnboardingMainState extends State<OnboardingMain> {
  int currentPage = 0;
  final PageController controller = PageController(initialPage: 0);
  List<Widget> pages = [
    const Onboard1(),
    const Onboard2(),
    const Onboard3(),
  ];

  void nextPage() {
    if (currentPage < pages.length - 1) {
      currentPage++;
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      currentPage--;
      controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? AppColor.primary : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: pages.length,
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => pages[index],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentPage != 0)
                      InkWell(
                        onTap: previousPage,
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Colors.grey,
                        child: Text(
                          "Back",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    if (currentPage == 0) const SizedBox(width: 28),
                    Row(
                      children: List.generate(
                        pages.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    if (currentPage == pages.length - 1)
                      const SizedBox(width: 28),
                    if (currentPage != pages.length - 1)
                      Padding(
                        padding: currentPage == 0
                            ? const EdgeInsets.symmetric(horizontal: 16)
                            : const EdgeInsets.all(0),
                        child: InkWell(
                          onTap: nextPage,
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.grey,
                          child: Text(
                            "Next",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
