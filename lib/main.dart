import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/screens/forgot_password.dart';
import 'package:train_app/screens/homepage.dart';
import 'package:train_app/screens/login_screen.dart';
import 'package:train_app/screens/sign_up_screen.dart';
import 'package:train_app/theme/railBuddyTheme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// ...



void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        theme: RailBuddyTheme.appTheme,
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          ForgotPassword.id: (context) => ForgotPassword(),
          HomePage.id: (context) => HomePage(),
          RegisterScreen.id: (context) => RegisterScreen(),
        },

      ),
    );
  }
}


