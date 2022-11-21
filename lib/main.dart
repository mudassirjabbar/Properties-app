import 'package:flutter/material.dart';
// import 'package:properties_app/exploreInformation/explore_home_screen.dart';
import 'package:properties_app/exploreInformation/explore_informations.dart';
// import 'package:properties_app/welcome_screens/add_phone_screen.dart';
// import 'package:properties_app/welcome_screens/otp_verification_screen.dart';
// import 'package:properties_app/welcome_screens/yahoo_login_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_forget_password_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_signUp_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_splash_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_welcome_screen.dart';
// import 'package:properties_app/widgets/help_addition.dart';

// import 'home_screen.dart';

// import 'package:properties_app/welcome_screens/yahoo_login_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_splash_screen.dart';
// import 'package:properties_app/welcome_screens/yoohoo_welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExploreInformation(),
    );
  }
}
