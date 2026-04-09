import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage(context, Colors.white, "Welcome", "Start your LMS learning journey today!"),
          _buildPage(context, Colors.white, "Track Progress", "Monitor your course achievements easily."),
          _buildPage(context, Colors.white, "Get Certified", "Complete courses and get certificates!", isLast: true),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, Color color, String title, String desc, {bool isLast = false}) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      color: color,
      padding: EdgeInsets.all(w * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.school, size: w * 0.25, color: const Color(0xFF0D47A1)),
          SizedBox(height: w * 0.08),

          Text(title, style: TextStyle(fontSize: w * 0.08, fontWeight: FontWeight.bold, color: const Color(0xFF0D47A1))),
          SizedBox(height: w * 0.05),

          Text(desc, style: TextStyle(fontSize: w * 0.04, color: Colors.grey), textAlign: TextAlign.center),
          SizedBox(height: w * 0.1),
          
          if (isLast)
            SizedBox(
              width: double.infinity,
              height: w * 0.13,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900], 
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04)),
                ),
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen())),
                child: Text("Get Started", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: w * 0.045)),
              ),
            ),
        ],
      ),
    );
  }
}