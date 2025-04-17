import 'package:codeiterate/screens/introScreen/splash_screen.dart';
import 'package:codeiterate/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: SplashScreen(),
    );
  }
}