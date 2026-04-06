import 'package:flutter/material.dart';
import 'course_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text("Hello, Student!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
            const Text("Let's continue your learning journey", style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 30),

            // Progress Card

            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue[900]!, Colors.blueAccent]),
                borderRadius: BorderRadius.circular(25),
              ),

              child: const Row(
                children: [
                  Icon(Icons.emoji_events, size: 50, color: Colors.amber),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Course Progress", style: TextStyle(color: Colors.white, fontSize: 16)),
                      Text("60% Completed", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Continue Learning Section

            const Text("Continue Learning", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            _buildClickableCard(
              "Flutter Basics",
              "Module 3: State Management",
              Icons.play_circle_fill,
              () => print("Card Tapped"),
            ),
            const SizedBox(height: 30),

            // Courses Section

            const Text("Featured Courses", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            _buildClickableCard("UI/UX Design", "Beginner Guide", Icons.design_services, () {}),
            _buildClickableCard("Dart Basics", "OOP Concepts", Icons.code, () {}),

            const SizedBox(height: 30),
            Center(
              child: TextButton(
                onPressed: () => print("View All Courses"), 
                child: const Text("Logout", style: TextStyle(color: Colors.redAccent)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildClickableCard(String title, String subtitle, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell( 
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
            child: Icon(icon, color: Colors.blueAccent),
          ),
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}