import 'package:codeiterate/screens/introScreen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      'title': 'Crafting Smart Software Solutions',
      'description': 'We craft modern mobile apps, elegant UIs, and powerful backend systems — all built with agility and precision.',
    },
    {
      'title': 'CodeIterate Evolve',
      'description': 'We believe in progress through iteration. Every version is a step forward toward better code and better experiences.',
    },
    {
      'title': 'Let’s Build Together',
      'description': 'Ready to launch your next big idea? Join us and let’s create something exceptional, one iteration at a time.',
    },
  ];

  void _nextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        pages[index]['title']!,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ).animate().fadeIn(duration: 1.seconds).slideY(begin: 0.2),
                      SizedBox(height: 20),
                      DefaultTextStyle(
                        style: Theme.of(context).textTheme.bodyMedium!,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              pages[index]['description']!,
                              speed: Duration(milliseconds: 60),
                            ),
                          ],
                          isRepeatingAnimation: false,
                          totalRepeatCount: 1,
                        ),
                      ).animate().fadeIn(duration: 1.5.seconds),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 30,
              left: 30,
              child: Row(
                children: List.generate(pages.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 16 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: ElevatedButton(
                onPressed: _nextPage,
                child: Text(_currentPage == 2 ? 'Start' : 'Next'),
              ).animate().slideY(duration: 1.seconds).fadeIn(duration: 1.seconds),
            ),
          ],
        ),
      ),
    );
  }
}
