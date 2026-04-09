import 'package:flutter/material.dart';
import '../models/course.dart';
import 'lesson_player_screen.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.05)),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: w * 0.1),
            color: Colors.blue[50],
            child: Column(
              children: [
                Icon(course.icon, size: w * 0.2, color: Colors.blue[900]),
                SizedBox(height: w * 0.03),
                Text(course.title, style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.bold)),
                Text("Instructor: ${course.instructor}", style: TextStyle(fontSize: w * 0.04, color: Colors.grey)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(w * 0.05),
            child: Text(course.description, style: TextStyle(fontSize: w * 0.04, color: Color(0xFF0D47A1), fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.05),
            child: Align(alignment: Alignment.centerLeft, child: Text("Lessons", style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold))),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: w * 0.03),
              itemCount: course.lessons.length,
              itemBuilder: (context, index) {
                final String currentLesson = course.lessons[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(radius: w * 0.04, child: Text("${index + 1}", style: TextStyle(fontSize: w * 0.03))),
                    title: Text(currentLesson, style: TextStyle(fontSize: w * 0.04)), 
                    trailing: Icon(Icons.play_circle_fill, color: Colors.blueAccent, size: w * 0.07),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LessonPlayerScreen(lessonTitle: currentLesson))),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}