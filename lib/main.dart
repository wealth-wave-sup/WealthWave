import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wealthwave/screens/splash_screen/splash_screen.dart';
import '/responsive_builder.dart';
import 'package:wealthwave/screens/login_page/login_screen.dart';

//firebase integration
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveBuilder(
          mobile: SplashScreen(),
          tablet: SplashScreen(),
          desktop: LoginScreen()),
    );
  }
}
