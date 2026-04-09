import 'package:flutter/material.dart';
import 'course_list_screen.dart';
import 'lesson_player_screen.dart';
import 'assignment_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.05)),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(w * 0.05),
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Student!", style: TextStyle(fontSize: w * 0.07, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
            Text("Let's continue your learning journey", style: TextStyle(fontSize: w * 0.04, color: Colors.grey)),
            SizedBox(height: w * 0.07),
            Container(
              padding: EdgeInsets.all(w * 0.06),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue[900]!, Colors.blueAccent]),
                borderRadius: BorderRadius.circular(w * 0.06),
              ),
              child: Row(
                children: [
                  Icon(Icons.emoji_events, size: w * 0.12, color: Colors.amber),
                  SizedBox(width: w * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Course Progress", style: TextStyle(color: Colors.white, fontSize: w * 0.04)),
                      Text("60% Completed", style: TextStyle(color: Colors.white, fontSize: w * 0.055, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: w * 0.07),

            Text("Continue Learning", style: TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold)),
            SizedBox(height: w * 0.03),

            _buildCard(context, w, "Flutter Basics", "Module 3: State Management", Icons.play_circle_fill, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LessonPlayerScreen(lessonTitle: "Introduction to Flutter")))),
            SizedBox(height: w * 0.07),

            Text("Featured Courses", style: TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold)),
            SizedBox(height: w * 0.03),

            _buildCard(context, w, "View All Courses", "Explore all available courses", Icons.list, () => Navigator.push(context, MaterialPageRoute(builder: (_) => CourseListScreen()))),
            SizedBox(height: w * 0.07),

            Text("My Assignments", style: TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold)),
            SizedBox(height: w * 0.03),

            _buildCard(context, w, "Recent Assignments", "See your pending tasks", Icons.assignment, () => Navigator.push(context, MaterialPageRoute(builder: (_) => AssignmentScreen()))),
            SizedBox(height: w * 0.1),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, double w, String title, String sub, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: w * 0.03),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(w * 0.04),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(w * 0.02),
            decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(w * 0.02)),
            child: Icon(icon, color: Colors.blueAccent, size: w * 0.06),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.04)),
          subtitle: Text(sub, style: TextStyle(fontSize: w * 0.035)),
          trailing: Icon(Icons.arrow_forward_ios, size: w * 0.04),
        ),
      ),
    );
  }
}