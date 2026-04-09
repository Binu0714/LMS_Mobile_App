import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg', height: w * 0.5),
            SizedBox(height: w * 0.05),

            Text('Learning Management System', style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold, color: const Color(0xFF0D47A1))),
            SizedBox(height: w * 0.1),
            
            CircularProgressIndicator(color: const Color(0xFF0D47A1), strokeWidth: w * 0.01)
          ],
        ),
      ),
    );
  }
}