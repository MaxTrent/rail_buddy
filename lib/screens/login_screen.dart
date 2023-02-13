import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/theme/constraints.dart';
import '../railBuddyButton.dart';
import '../railBuddyTextFormField.dart';
import 'forgot_password.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../railBuddyButton.dart';
import '../railBuddyTextFormField.dart';
import 'forgot_password.dart';
import 'homepage.dart';

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
                    color: bColorGrey,
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
                              Text('Sign In',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 33.sp)),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Username',
                                  style: Theme.of(context).textTheme.headline1),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyTextFormField(
                                    controller: usernameController,
                                    borderSide: BorderSide.none, fillColor: fColorGrey,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password',
                                  style: Theme.of(context).textTheme.headline1),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyTextFormField(
                                    controller: passwordController,
                                    borderSide: BorderSide.none, fillColor: fColorGrey,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, ForgotPassword.id);
                                  },
                                  child: Text('Forgot Password?',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(color: Colors.black))),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyButton(
                                    text: 'Login',
                                    onPressed:
                                    (){Navigator.pushNamed(context, HomePage.id);}
                                    , color: bColorWhite, backgroundColor: fColorBlue,
                                  )),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account yet?',
                                style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black)
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Up',
                                    style:  Theme.of(context).textTheme.headline1
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
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         //appBar: AppBar(),
//         body: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             Image.asset('asset/background.jpg'),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 550.h,
//                 decoration: BoxDecoration(
//                     color: bColorGrey,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30.r),
//                         topRight: Radius.circular(30.r))),
//                 child: Center(
//                   child: Padding(
//                       padding: EdgeInsets.only(top: 15.0.h),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('Sign In',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .headline1!
//                                       .copyWith(fontSize: 33.sp)),
//                               SizedBox(
//                                 height: 15.h,
//                               ),
//                               Text('Username',
//                                   style: Theme.of(context).textTheme.headline1),
//                               SizedBox(
//                                   height: 50.h,
//                                   width: 300.w,
//                                   child: RailBuddyTextFormField(
//                                     controller: usernameController,
//                                     borderSide: BorderSide.none, fillColor: fColorGrey,
//                                   )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30.h,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('Password',
//                                   style: Theme.of(context).textTheme.headline1),
//                               SizedBox(
//                                   height: 50.h,
//                                   width: 300.w,
//                                   child: RailBuddyTextFormField(
//                                     controller: passwordController,
//                                     borderSide: BorderSide.none, fillColor: fColorGrey,
//                                   )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 15.h,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               TextButton(
//                                   onPressed: () {
//                                     Navigator.pushNamed(
//                                         context, ForgotPassword.id);
//                                   },
//                                   child: Text('Forgot Password?',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headline1!
//                                           .copyWith(color: Colors.black))),
//                               SizedBox(
//                                 height: 15.h,
//                               ),
//                               SizedBox(
//                                   height: 50.h,
//                                   width: 300.w,
//                                   child: RailBuddyButton(
//                                     text: 'Login',
//                                     onPressed:
//                                       Navigator.pushNamed(context, HomePage.id)
//                                     , color: bColorWhite, backgroundColor: fColorBlue,
//                                   )),
//                             ],
//                           ),
//                           SizedBox(height: 15.h),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Don\'t have an account yet?',
//                                 style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black)
//                               ),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'Sign Up',
//                                     style:  Theme.of(context).textTheme.headline1
//                                   )),
//                             ],
//                           ),
//                         ],
//                       )),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
