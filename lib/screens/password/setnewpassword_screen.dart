import 'package:codeiterate/screens/login/login_screen.dart';
import 'package:codeiterate/screens/util/message_util.dart';
import 'package:flutter/material.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Set New Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, MediaQuery.of(context).viewInsets.bottom + 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Set a new password for your account',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                'New Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter new password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Confirm New Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Re-enter new password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    showPlainTextMessage(context, 'Your password has been changed successfully');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF006B7F),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
