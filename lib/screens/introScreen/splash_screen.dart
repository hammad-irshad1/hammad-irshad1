import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to CodeIterate!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(duration: 1.seconds).slideY(begin: 0.2),
        
              SizedBox(height: 40),
        
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ).animate().scale(duration: 1.5.seconds).fadeIn(),
        
              SizedBox(height: 45),
        
              Text(
                'We turn ideas into clean, scalable code. From startups to enterprises, we help you build smarter, faster, and better.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(duration: 2.seconds).slideY(begin: 0.2),
        
              SizedBox(height: 40),
        
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ).animate().fadeIn(duration: 1.5.seconds),
            ],
          ),
        ),
      ),
    );
  }
}
