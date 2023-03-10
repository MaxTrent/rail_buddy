// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/admin/admin_profile.dart';
import 'package:train_app/screens/user/user_profile.dart';
import 'package:train_app/theme/railBuddyTheme.dart';

import '../railBuddyButton.dart';
import '../theme/constraints.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.1,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 12.0.h, left: 12.0.w, right: 12.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome!',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 28.sp, fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                      CircleAvatar(
                        backgroundColor: fColorGrey,
                        radius: 20.r,
                        child: IconButton(
                          onPressed: () {
                             Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: ((context) =>
                            const UserProfilePage()),
                      ),
                    );
                          },
                          icon: Icon(
                            Icons.person,
                            size: 20.sp,
                            color: fColorBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.h,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Book your train anywhere anytime!',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 38.sp, fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    height: 100.h,
                    width: 400.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Depart 13th February, 2023 at 9:30am',
                          style: TextStyle(color: Colors.grey.shade300 ,fontSize: 22, fontWeight: FontWeight.w700, ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Jotta',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: bColorWhite, fontSize: 33.sp),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: 33.sp,
                            ),
                            Text(
                              'Bandana',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: bColorWhite, fontSize: 33.sp),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(color: fColorBlue),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 0.0.w),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      12.0,
                      12.0,
                      12.0,
                      0,
                    ),
                    height: 100.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                      color: bColorGrey,
                      border: Border.all(width: 2.w, color: fColorGrey),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Depart 13th February, 2023 at 9:30am',
                          style:TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bandana',
                              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: fColorBlue,
                              size: 33.sp,
                            ),
                            Text(
                              'Jotta',
                              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: bColorGrey,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.r),
                            topLeft: Radius.circular(30.r))),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: fColorBlue,
                              ),
                              child: Center(
                                child: Text(
                                  'One Way',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26, fontWeight: FontWeight.w700, ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: bColorGrey,
                                  border: Border.all(
                                      width: 2.w, color: fColorGrey)),
                              child: Center(
                                child: Padding(padding: EdgeInsets.all(5),child: Text(
                                  'Round Trip',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, ),
                                ),)
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: bColorGrey,
                                  border: Border.all(
                                      width: 2.w, color: fColorGrey)),
                              child: Center(
                                child: Text(
                                  'Multi-City',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // padding: EdgeInsets.fromLTRB(
                                //   12.0,
                                //   12.0,
                                //   12.0,
                                //   0,
                                // ),
                                height: 80.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: fColorGrey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'FROM',
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, ),
                                      ),
                                      SizedBox(height: 20,),
                                      Text(
                                        'Bandana',
                                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.fromLTRB(
                                //   12.0,
                                //   12.0,
                                //   12.0,
                                //   0,
                                // ),
                                height: 80.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: fColorGrey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TO',
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        'Jotta',
                                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // padding: EdgeInsets.fromLTRB(
                                //   12.0,
                                //   12.0,
                                //   12.0,
                                //   0,
                                // ),
                                height: 80.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: fColorGrey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DEPARTURE',
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, ),),
                                      SizedBox(height: 12,),
                                      Text(
                                        '13th February 2023 9:30am',
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.fromLTRB(
                                //   12.0,
                                //   12.0,
                                //   12.0,
                                //   0,
                                // ),
                                height: 80.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: fColorGrey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TO',
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, ),
                                      ),
                                      SizedBox(height:20,),
                                      Text(
                                        'Jotta',
                                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ),

                        SizedBox(height: 40.h,),
                        SizedBox(
                          height: 50.h,
                          width: 330.w,
                          child: RailBuddyButton(
                            text: 'Book Ticket',
                            onPressed: () async {


                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
