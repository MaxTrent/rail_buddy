import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/admin/admin_profile.dart';
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
          child: Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
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
                              .copyWith(fontSize: 20.sp, color: Colors.black),
                        ),
                        CircleAvatar(
                          backgroundColor: fColorGrey,
                          radius: 20.r,
                          child: IconButton(
                            onPressed: () {},
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
                          .copyWith(fontSize: 28.sp, color: Colors.black),
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
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(color: bColorWhite),
                          ),
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
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Bandana',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(color: fColorBlue, fontSize: 33.sp),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: fColorBlue,
                                size: 33.sp,
                              ),
                              Text(
                                'Jotta',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(color: fColorBlue, fontSize: 33.sp),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(color: Colors.white),
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
                                  child: Text(
                                    'Round Trip',
                                    // textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(color: fColorBlue),
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
                                  child: Text(
                                    'Multi-City',
                                    // textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(color: fColorBlue),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(color: Colors.black),
                                        ),
                                        Text(
                                          'Bandana',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w700),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(color: Colors.black),
                                        ),
                                        Text(
                                          'Jotta',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                              color: Colors.black,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(color: Colors.black),
                                        ),
                                        Text(
                                          '13th February 2023 9:30am',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(color: Colors.black),
                                        ),
                                        Text(
                                          'Jotta',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                              color: Colors.black,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),

                          SizedBox(height: 10.h,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
