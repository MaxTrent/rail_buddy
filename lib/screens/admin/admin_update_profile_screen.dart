import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/admin/admin_profile.dart';

import '../../railBuddyTextFormField.dart';

class AdminUpdateProfileScreen extends StatefulWidget {
  static const String id = 'admin-update-profile';
  const AdminUpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<AdminUpdateProfileScreen> createState() =>
      _AdminUpdateProfileScreenState();
}

class _AdminUpdateProfileScreenState extends State<AdminUpdateProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => const AdminProfilePage()),
                        ),
                      );
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade600,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Update Profile',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 89,
                ),
                child: Container(
                  height: 250,
                  width: 190,
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Name',
                          style:
                              // GoogleFonts.nunito(
                              TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )
                          // ),
                          ),
                    ),
                    SizedBox(
                        height: 50.h,
                        width: 300.w,
                        child: RailBuddyTextFormField(
                          obscure: true,
                          controller: nameController,
                          hintText: 'John Rice',
                          borderSide: BorderSide.none,
                          keyboardType: TextInputType.emailAddress,
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Email',
                              style:
                                  // GoogleFonts.nunito(
                                  TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              )
                              // ),
                              ),
                        ),
                        SizedBox(
                            height: 50.h,
                            width: 300.w,
                            child: RailBuddyTextFormField(
                              controller: emailController,
                              hintText: 'johnrice@gmail.com',
                              borderSide: BorderSide.none,
                              keyboardType: TextInputType.emailAddress,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
