import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_color.dart';

class ForumPage extends StatelessWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ForumPage();
  }
}

class _ForumPage extends StatefulWidget {
  @override
  _MyForumPage createState() => _MyForumPage();
}

class _MyForumPage extends State<_ForumPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.dust,
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: Stack(children: [
            Positioned(
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 50, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  color: AppColor.primary,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 34),
                        alignment: Alignment.centerLeft,
                        height: 150,
                        child: Text(
                          'Berbagai Pengalaman Dengan Kami',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 20,
              right: 20,
              child: ForumInputPost(),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ForumPost(
                    name: "Song Hee",
                    posts:
                        "Saya ingin menambahkan beberapa tips untuk mengatasi kelaparan di desa terpencil. Menurut saya, penting meningkatkan akses masyarakat terhadap air bersih dan sanitasi. Hal ini akan membantu mencegah penyakit dan meningkatkan kesehatan masyarakat, sehingga mereka lebih mampu untuk bekerja dan menghasilkan makanan",
                    like: "9,2K",
                    reply: "87",
                    bar: "10K",
                    urlPicture: "assets/images/person_2.jpeg",
                  ),
                  ForumPost(
                    name: "Bahrul bahri",
                    posts:
                        "Saya ingin menambahkan beberapa tips untuk mengatasi kelaparan di desa terpencil. Menurut saya, penting meningkatkan akses masyarakat terhadap air bersih dan sanitasi. Hal ini akan membantu mencegah penyakit dan meningkatkan kesehatan masyarakat, sehingga mereka lebih mampu untuk bekerja dan menghasilkan makanan",
                    like: "7,2K",
                    reply: "47",
                    bar: "8K",
                    urlPicture: "assets/images/person_2.jpeg",
                  ),
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}

class ForumInputPost extends StatelessWidget {
  const ForumInputPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'What\'s on your mind?',
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.white),
                    maxLines: null,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/mynaui_image.png',
                  color: Colors.black,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/solar_camera-broken.png',
                  color: Colors.black,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/mage_gif.png',
                  color: Colors.black,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/grommet-icons_list.png',
                  color: Colors.black,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Semua orang bisa membalas',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  ),
                ),
                Center(
                  child: Container(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 14),
                        child: Text(
                          'Unggah',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class ForumPost extends StatelessWidget {
  final String name;
  final String posts;
  final String like;
  final String reply;
  final String bar;
  final String urlPicture;

  const ForumPost({
    super.key,
    required this.name,
    required this.posts,
    required this.like,
    required this.reply,
    required this.bar,
    required this.urlPicture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(urlPicture),
                ),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          posts,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    "assets/images/comment.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  reply,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  like,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.bar_chart_outlined,
                                    color: AppColor.primary,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  bar,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String title;

  const ProfileMenu({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodSubTitile extends StatelessWidget {
  final String title;

  const FoodSubTitile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Lihat semua",
            style: GoogleFonts.poppins(
              color: AppColor.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}

class foodType extends StatelessWidget {
  final String text;
  final String path;
  const foodType({
    super.key,
    required this.text,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            path,
            height: 54,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: AppColor.primary,
      ),
      child: Container(
        height: 200.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  children: [
                    const SizedBox(width: 14.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Atur lokasi",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Sukapura, Bojongsoang",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/bag.png',
                        width: 50,
                        height: 50,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/notify.png',
                        width: 50,
                        height: 50,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  final String text;
  final String title;

  const CarouselItem({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [AppColor.primary, Color.fromRGBO(255, 204, 0, 100)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(237, 209, 108, 100)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Beli Sekarang',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/carousel.png',
          )
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: isActive ? 28 : 8,
      decoration: BoxDecoration(
        color: isActive ? AppColor.primary : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class FoodsCarouselItem extends StatelessWidget {
  final String name;
  final String price;

  const FoodsCarouselItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/cake.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/heart.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
