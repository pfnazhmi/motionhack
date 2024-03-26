import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/theme/app_color.dart';
import 'package:motionhack/widget/button_custom.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _EditProfilePage();
  }
}

class _EditProfilePage extends StatefulWidget {
  @override
  _MyEditProfilePage createState() => _MyEditProfilePage();
}

class _MyEditProfilePage extends State<_EditProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: CustomAppBar(),
      ),
      backgroundColor: AppColor.dust,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 20, bottom: 50, left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        color: AppColor.primary,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 20,
                    right: 20,
                    child: CircleAvatar(
                      radius: 82,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Ubah profile picture',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  EditableProfileField(
                    label: "Username",
                    initialValue: "Alex Arsenio",
                  ),
                  EditableProfileField(
                    label: "Email",
                    initialValue: "alexasrenio@gmail.com",
                  ),
                  EditableProfileField(
                    label: "Phone Number",
                    initialValue: "",
                  ),
                  EditableProfileField(
                    label: "Gender",
                    initialValue: "",
                  ),
                  EditableProfileField(
                    label: "Tanggal Lahir",
                    initialValue: "",
                  ),
                  SizedBox(height: 20),
                  ButtonCustom(
                    label: 'Simpan',
                    onTap: () {},
                    isExpand: true,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditableProfileField extends StatelessWidget {
  final String label;
  final String initialValue;

  const EditableProfileField({
    required this.label,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.dust,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
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
      color: AppColor.primary,
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
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "Edit Profile",
                style: GoogleFonts.poppins(
                  color: Colors.white,
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
