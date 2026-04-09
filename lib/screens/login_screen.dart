import 'package:flutter/material.dart';
import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center( 
        child: SingleChildScrollView(
          padding: EdgeInsets.all(w * 0.06),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.jpg', height: w * 0.6),
                SizedBox(height: w * 0.02),

                Text("Welcome Back.!", style: TextStyle(fontSize: w * 0.08, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
                Text("Sign In To Continue.!", style: TextStyle(fontSize: w * 0.04, color: Colors.grey)),
                SizedBox(height: w * 0.1), 
                
                TextFormField(
                  autofocus: true,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email', 
                    prefixIcon: Icon(Icons.email, size: w * 0.06), 
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(w * 0.02))),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Please Enter Your Email';
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) return 'Enter a valid email';
                    return null;
                  }
                ),
                SizedBox(height: w * 0.05),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password', 
                    prefixIcon: Icon(Icons.lock, size: w * 0.06), 
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(w * 0.02))),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Please Enter Your Password';
                    if (value.length < 6) return 'Password must be at least 6 characters';
                    return null;
                  },
                ),
                SizedBox(height: w * 0.08),
                SizedBox(
                  width: double.infinity,
                  height: w * 0.13,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900], 
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen())).then((_) {
                          _emailController.clear();
                          _passwordController.clear();
                        });
                      }
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white, fontSize: w * 0.045, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}