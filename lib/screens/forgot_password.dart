import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/theme/constraints.dart';
import 'package:train_app/railBuddyButton.dart';
import 'package:train_app/railBuddyTextFormField.dart';
// import 'package:google_fonts/google_fonts.dart';



class ForgotPassword extends StatefulWidget {
  static const String id = 'forgot-password';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //appBar: AppBar(),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset('asset/background.jpg'),
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
                              Text('Forgot Password', style: TextStyle(
                                color: Colors.blue,
                                fontSize: 33.sp,
                                fontWeight: FontWeight.w600,
                              ),),
                              SizedBox(height: 30.h,),
                              Text('Email', style: 
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
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    hintText: 'Password',
                                    borderSide: BorderSide.none,)),

                            ],
                          ),

                          SizedBox(height: 15.h,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              SizedBox(height: 15.h,),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyButton(text: 'Submit', onPressed: Navigator.of(context).pop,),
                              ),
                            ],
                          ),

                          SizedBox(height: 15.h),

                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('Back to Login', style: 
                          // GoogleFonts.nunito(
                            TextStyle(color: Colors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,)
                          // ),
                          )),],)
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
