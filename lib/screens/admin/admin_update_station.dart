import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/admin/admin_profile.dart';
import 'package:train_app/theme/constraints.dart';

import '../../railBuddyButton.dart';
import '../../railBuddyTextFormField.dart';
import '../../services/user_services.dart';

class AdminUpdateStationScreen extends StatefulWidget {
  static const String id = 'admin-update-profile';
  const AdminUpdateStationScreen({Key? key}) : super(key: key);

  @override
  State<AdminUpdateStationScreen> createState() =>
      _AdminUpdateStationScreenState();
}

class _AdminUpdateStationScreenState extends State<AdminUpdateStationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController departureTimeController = TextEditingController();
  TextEditingController arrivalTimeController = TextEditingController();
  late DateTime selectedDate = DateTime.now();
  final _minimumDate = DateTime(1930, 1, 1);
  final _maximumDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();

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
            padding: const EdgeInsets.only(left: 2.0, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
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
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // Save the updated departure and arrival times to the database here

                        Navigator.pop(context);
                      }
                    },
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
          child: Form(
            key: _formKey,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/train_image.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 22.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: Text('Train Station Name',
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
                                  // obscure: true,
                                  controller: nameController,
                                  hintText: 'International Train Services',
                                  borderSide: BorderSide.none,
                                  keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                )),
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('Train Station code',
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
                                    hintText: '129GW120',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    'Address',
                                    style:
                                        // GoogleFonts.nunito(
                                        TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    // ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                  width: 300.w,
                                  child: RailBuddyTextFormField(
                                    keyboardType: TextInputType.streetAddress,
                                    controller: addressController,
                                    hintText: 'No, 102 Texas Mary Island ',
                                    borderSide: BorderSide.none, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('Geolocation',
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
                                    controller: cityController,
                                    hintText: 'Lagos',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('Departure Time',
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
                                    controller: departureTimeController,
                                    hintText: '11:00 am',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('Arrival Time',
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
                                    controller: arrivalTimeController,
                                    hintText: '1:00 pm',
                                    borderSide: BorderSide.none,
                                    keyboardType: TextInputType.emailAddress, fillColor: fColorGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
