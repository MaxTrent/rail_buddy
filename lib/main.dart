import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:train_app/screens/forgot_password.dart';

import 'screens/admin/admin_profile.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      builder: (context, child)=> MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        title: 'Train Ticketing App',
        theme: ThemeData(
          // textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
        ),
        initialRoute: AdminProfilePage.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          ForgotPassword.id: (context) => ForgotPassword(),
          RegisterScreen.id: (context) => const RegisterScreen(),
          AdminProfilePage.id: (context) => const AdminProfilePage(),
        },
      ),
    );
  }
}

