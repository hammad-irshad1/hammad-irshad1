import 'package:codeiterate/screens/util/message_util.dart';
import 'package:flutter/material.dart';
import 'package:codeiterate/screens/password/setnewpassword_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, MediaQuery.of(context).viewInsets.bottom + 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Text(
                'We’ve sent a 4-digit code to your email',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 60,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 40),

              // Verify Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SetNewPasswordScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF34068),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Verify'),
                ),
              ),

              const SizedBox(height: 20),

              // Resend option
              TextButton(
                onPressed: () {
                  showPlainTextMessage(context, 'OTP has been sent successfully');
                },
                child: const Text(
                  'Resend Code',
                  style: TextStyle(color: Color(0xFF006B7F)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
