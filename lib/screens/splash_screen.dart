import 'package:flutter/material.dart';
import 'login_screen.dart';

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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.jpg'),
          const SizedBox(height: 20),

          const Text('Learning Management System', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
          const SizedBox(height: 50),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: LinearProgressIndicator(
              backgroundColor: Color(0xFF0D47A1),
              color: Color(0xFF0D47A1),
            ),
          )
        ],
      ),
    );
  }
}