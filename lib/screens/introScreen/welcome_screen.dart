import 'package:codeiterate/screens/login/login_screen.dart';
import 'package:codeiterate/screens/login/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Animation controller
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    // Slide animation for title and subtitle
    _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Fade animation for buttons and text
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start the animations
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensures the buttons are at the bottom
        children: [
          // Title and Subtitle centered vertically
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Center text vertically
              children: [
                SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Text(
                      'Welcome!',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Text(
                      'Choose one option',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Buttons positioned at the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to register screen
                        Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF34068),
                      ),
                      child: Text('Register'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to login screen
                        Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                        

                      },
                      child: Text('Login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
