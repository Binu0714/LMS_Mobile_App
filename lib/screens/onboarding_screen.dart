import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage(Colors.white, "Welcome", "Start your LMS learning journey today!"),
          _buildPage(Colors.white, "Track Progress", "Monitor your course achievements easily."),
          _buildPage(Colors.white, "Get Certified", "Complete courses and get certificates!", isLast: true, context: context),
        ],
      ),
    );
  }

  Widget _buildPage(Color color, String title, String desc, {bool isLast = false, BuildContext? context}) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Icon(Icons.school, size: 100, color: Color(0xFF0D47A1)),
          const SizedBox(height: 30),

          Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
          const SizedBox(height: 20),

          Text(desc, style: const TextStyle(fontSize: 16, color: Colors.grey), textAlign: TextAlign.center),
          const SizedBox(height: 40),

          if (isLast)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900], 
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () => Navigator.pushReplacement(context!, MaterialPageRoute(builder: (context) => const LoginScreen())),
              child: const Text("Get Started",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
    );
  }
}