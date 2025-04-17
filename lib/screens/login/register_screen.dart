import 'package:codeiterate/screens/login/login_screen.dart';
import 'package:codeiterate/screens/util/message_util.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _agree = false;

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
              // Title
              Text(
                'Create New Account',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 24),

              // Full Name Field
              const Text('Full Name'),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Email Field
              const Text('Email Address'),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Create Password
              const Text('Create Password'),
              const SizedBox(height: 8),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Confirm Password
              const Text('Confirm Password'),
              const SizedBox(height: 8),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Re-enter password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Checkbox
              Row(
                children: [
                  Checkbox(
                    value: _agree,
                    onChanged: (value) {
                      setState(() {
                        _agree = value ?? false;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text('I agree with the terms and conditions'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Register Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _agree
                      ? () {
                        showPlainTextMessage(context, 'Congratulation! Your account has been created succesfully....');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF34068),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Register'),
                ),
              ),

              const SizedBox(height: 24),

              // Bottom text
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      children: [
                        TextSpan(
                          text: 'Login',
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
