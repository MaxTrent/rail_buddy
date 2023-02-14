import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:train_app/railBuddyButton.dart';
import 'package:train_app/railBuddyTextFormField.dart';
import 'package:train_app/screens/admin/admin_profile.dart';
import 'package:train_app/theme/constraints.dart';

import 'forgot_password.dart';
import 'homepage.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            // clipBehavior: Clip.none,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: Image.asset(
                      'assets/images/train_image.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 232.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                  child: Center(
                    child: Padding(
                        padding: EdgeInsets.only(top: 15.0.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.blue.shade800,
                                      fontSize: 33.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
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
                                    controller: usernameController,
                                    hintText: 'Email address..',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Password',
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
                                      controller: passwordController,
                                      hintText: 'Password',
                                      borderSide: BorderSide.none,
                                      keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, ForgotPassword.id);
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style:
                                          // GoogleFonts.nunito(
                                          TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                    )
                                    // )
                                    ),
                                SizedBox(
                                  height: 45.h,
                                ),
                                SizedBox(
                                    height: 50.h,
                                    width: 300.w,
                                    child: RailBuddyButton(
                                        text: 'Login',
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()),);
                                        })),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Don\'t have an account yet?',
                                    style:
                                        // GoogleFonts.nunito(
                                        TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                    // ),
                                    ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              RegisterScreen()),
                                        ),
                                      );
                                    },
                                    child: Text('Sign Up',
                                        style:
                                            // GoogleFonts.nunito(
                                            TextStyle(
                                          color: Colors.blue.shade700,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                        )
                                        // ),
                                        )),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
