import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/pages/artikel_page.dart';
import 'package:motionhack/pages/discover_page.dart';
import 'package:motionhack/pages/forum_page.dart';
import 'package:motionhack/pages/profile_page.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigation(),
      theme: ThemeData(
        // Specify the default text theme using Google Fonts
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key});

  @override
  _MyNavigationState createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation>
    with AutomaticKeepAliveClientMixin {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // FirestoreService().loadDataFirestore();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: PageView(
        controller: _pageController,
        children: const [
          DiscoverPage(),
          ArtikelPage(),
          ForumPage(),
          ProfilePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF17C118),
        backgroundColor: const Color(0xFFFFFFFF),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0 // Check if profile icon is active
                ? Image.asset(
                    "assets/images/discover_active.png", // Use active profile icon
                    width: 45,
                    height: 45,
                  )
                : Image.asset(
                    "assets/images/discover.png", // Use inactive profile icon
                    width: 45,
                    height: 45,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1 // Check if profile icon is active
                ? Image.asset(
                    "assets/images/article_active.png", // Use active profile icon
                    width: 45,
                    height: 45,
                  )
                : Image.asset(
                    "assets/images/article.png", // Use inactive profile icon
                    width: 45,
                    height: 45,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2 // Check if profile icon is active
                ? Image.asset(
                    "assets/images/forum_active.png", // Use active profile icon
                    width: 45,
                    height: 45,
                  )
                : Image.asset(
                    "assets/images/forum.png", // Use inactive profile icon
                    width: 45,
                    height: 45,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3 // Check if profile icon is active
                ? Image.asset(
                    "assets/images/profile_active.png", // Use active profile icon
                    width: 45,
                    height: 45,
                  )
                : Image.asset(
                    "assets/images/profile.png", // Use inactive profile icon
                    width: 45,
                    height: 45,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
