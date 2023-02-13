import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/admin/admin_profile.dart';

import '../../railBuddyButton.dart';
import '../../railBuddyTextFormField.dart';
import '../../services/user_services.dart';

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
                        // Save the updated profile information to your database
                        // For example, using Firebase:
                        // FirebaseFirestore.instance.collection('users').doc(user.uid).update({
                        //   'name': _name,
                        //   'email': _email,
                        // });
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
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
                          width: 320.w,
                          child: RailBuddyTextFormField(
                            obscure: true,
                            controller: nameController,
                            hintText: 'John Rice',
                            borderSide: BorderSide.none,
                            keyboardType: TextInputType.emailAddress,
                          )),
                      SizedBox(
                        height: 1.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
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
                            width: 320.w,
                            child: RailBuddyTextFormField(
                              controller: emailController,
                              hintText: 'johnrice@gmail.com',
                              borderSide: BorderSide.none,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('Birth Date',
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
                            width: 320.w,
                            child: TextField(
                              decoration: InputDecoration(
                                // suffixIcon: suffixIcon,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                //hintText: hintText,
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                hintText: 'Birth Date',
                                errorStyle: const TextStyle(
                                    height: 0, color: Colors.red),
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xFF969A9D),
                                  fontWeight: FontWeight.w500,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide.none,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF969A9D),
                              ),
                              onTap: () async {
                                final date = await showDatePicker(
                                  context: context,
                                  initialDate: selectedDate ?? _maximumDate,
                                  firstDate: _minimumDate,
                                  lastDate: _maximumDate,
                                );
                                if (date != null) {
                                  setState(() {
                                    selectedDate = date;
                                  });
                                }
                              },
                              onChanged: (value) {
                                setState(() {
                                  selectedDate =
                                      DateFormat('yyyy-MM-dd').parse(value);
                                });
                              },
                              controller: TextEditingController(
                                  text: selectedDate == null
                                      ? ''
                                      : DateFormat('yyyy-MM-dd')
                                          .format(selectedDate)),
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
                              'Phone Number',
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
                            width: 320.w,
                            child: RailBuddyTextFormField(
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              controller: phoneNumberController,
                              hintText: '+23490312221246',
                              borderSide: BorderSide.none,
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
                            child: Text('City,State',
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
                            width: 320.w,
                            child: RailBuddyTextFormField(
                              controller: emailController,
                              hintText: 'Ikoyi,Lagos',
                              borderSide: BorderSide.none,
                              keyboardType: TextInputType.emailAddress,
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
                            child: Text('Country',
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
                            width: 320.w,
                            child: RailBuddyTextFormField(
                              controller: emailController,
                              hintText: 'Nigeria',
                              borderSide: BorderSide.none,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                InkWell(
                  onTap: () => _confirmDeleteAccount(),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      'Delete Account',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
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

  Future<void> _confirmDeleteAccount() async {
    return showDialog(
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete account'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Are you sure you want to delete your account?'),
              ],
            ),
          ),
          actions: <Widget>[
            RailBuddyButton(
              text: 'No',
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RailBuddyButton(
              text: 'Yes',
              onPressed: () {
                Navigator.of(context).pop();
                deleteAccount();
              },
            ),
          ],
        );
      },
      context: context,
    );
  }
}
