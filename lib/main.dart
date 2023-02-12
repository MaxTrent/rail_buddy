import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: 'Train Ticketing App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
        },
        home: LoginScreen(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
               // suffixIcon: suffixIcon,
                contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                //hintText: hintText,
                fillColor: Theme.of(context).backgroundColor,
                filled: false,
                errorStyle: TextStyle(height: 0, color: Colors.transparent),
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF969A9D),
                  fontWeight: FontWeight.w300,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.red, width: .5),
                ),
              ),
        style: TextStyle(
            fontSize: 16,
            color: Color(0xFF3C3C43),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

