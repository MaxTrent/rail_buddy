import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_app/railBuddyButton.dart';
import 'package:train_app/railBuddyTextFormField.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:train_app/screens/forgot_password.dart';

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
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
        ),
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          ForgotPassword.id: (context) => ForgotPassword(),
        },

      ),
    );
  }
}

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
                            Text('Sign In', style: TextStyle(
                              color: Colors.blue,
                              fontSize: 33.sp,
                              fontWeight: FontWeight.w600,
                            ),),
                            SizedBox(height: 15.h,),

                            Text('Username', style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),),
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
                            Text('Password', style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, ForgotPassword.id);
                            }, child: Text('Forgot Password?',
                              style: GoogleFonts.nunito(
                                fontSize: 16.sp,
                                color: Colors.black,
                            fontWeight: FontWeight.w600),)),
                            SizedBox(height: 15.h,),
                            SizedBox(
                                height: 50.h,
                                width: 300.w,
                                child: RailBuddyButton(text: 'Login')
                            ),
                          ],
                        ),

                        SizedBox(height: 15.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text('Don\'t have an account yet?',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),),
                          TextButton(onPressed: (){}, child: Text('Sign Up', style: GoogleFonts.nunito(
                            color: Colors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),)),
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

