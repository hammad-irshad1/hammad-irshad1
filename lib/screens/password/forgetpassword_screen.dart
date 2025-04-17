import 'package:codeiterate/screens/password/otpverification_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Forgot Password',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, MediaQuery.of(context).viewInsets.bottom + 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              const Text(
                'Enter Email',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),

              // Send OTP Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const OtpVerificationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF34068),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Send OTP'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
