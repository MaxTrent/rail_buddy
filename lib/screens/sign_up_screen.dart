import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../railBuddyTextFormField.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register-screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset('assets/images/train_image.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 550.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))
                ),
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
                            Text('Sign Up', style: TextStyle(
                              color: Colors.blue,
                              fontSize: 33.sp,
                              fontWeight: FontWeight.w600,
                            ),),
                            SizedBox(height: 15.h,),
                            Text('FullName', style: 
                            // GoogleFonts.nunito(
                              TextStyle(color: Colors.blue,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,)
                            // ),
                            ),
                            SizedBox(
                                height: 50.h,
                                width: 300.w,
                                child: RailBuddyTextFormField(
                                  controller: fullnameController,
                                  hintText: 'FullName',
                                  borderSide: BorderSide.none,)),

                            Text('Username', style: 
                            // GoogleFonts.nunito(
                              TextStyle(color: Colors.blue,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,)
                            // ),
                            ),
                            SizedBox(
                                height: 50.h,
                                width: 300.w,
                                child: RailBuddyTextFormField(
                                  controller: usernameController,
                                  hintText: 'Username',
                                  borderSide: BorderSide.none,)),
                          ],
                        ),

                        SizedBox(height: 30.h,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Password', style: 
                            // GoogleFonts.nunito(
                              TextStyle(color: Colors.blue,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,)
                            // ),
                            ),
                            SizedBox(
                                height: 50.h,
                                width: 300.w,
                                child: RailBuddyTextFormField(
                                  controller: passwordController,
                                  hintText: 'Password',
                                  borderSide: BorderSide.none,)),

                          ],
                        ),

                        SizedBox(height: 15.h,),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     TextButton(onPressed: (){
                        //       Navigator.pushNamed(context, ForgotPassword.id);
                        //     }, child: Text('Forgot Password?',
                        //       style: GoogleFonts.nunito(
                        //         fontSize: 16.sp,
                        //         color: Colors.black,
                        //     fontWeight: FontWeight.w600),)),
                        //     SizedBox(height: 15.h,),
                        //     SizedBox(
                        //         height: 50.h,
                        //         width: 300.w,
                        //         child: RailBuddyButton(text: 'Login')
                        //     ),
                        //   ],
                        // ),

                        SizedBox(height: 15.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text('Don\'t have an account yet?',
                          style: 
                          // GoogleFonts.nunito(
                            TextStyle(color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,)
                          // ),
                          ),
                          TextButton(onPressed: (){}, child: Text('Sign Up', style: 
                          // GoogleFonts.nunito(
                            TextStyle(color: Colors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,)
                          // ),
                          )),
                          ],
                        ),],)
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
    
  }
}
