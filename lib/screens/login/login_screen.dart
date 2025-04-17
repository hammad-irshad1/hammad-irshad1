import 'package:codeiterate/screens/password/forgetpassword_screen.dart';
import 'package:codeiterate/screens/home_screen.dart';
import 'package:codeiterate/screens/login/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, 12, 24, MediaQuery.of(context).viewInsets.bottom + 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                'Login to your account',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 32),

              // Email
              const Text('Email Address'),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Password
              const Text('Password'),
              const SizedBox(height: 8),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ForgotPasswordScreen()),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFF006B7F)),
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF006B7F),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Login'),
                ),
              ),

              const SizedBox(height: 24),

              // Bottom link
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RegisterScreen()),
                    );
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        TextSpan(
                          text: "Register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
