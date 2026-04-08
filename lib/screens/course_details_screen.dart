import 'package:flutter/material.dart';
import '../models/course.dart';
import 'lesson_player_screen.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          // 1. Header Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            color: Colors.blue[50],
            child: Column(
              children: [
                Icon(course.icon, size: 80, color: Colors.blue[900]),
                const SizedBox(height: 15),
                Text(course.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text("Instructor: ${course.instructor}", style: const TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          ),

          // 2. Description
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(course.description, style: const TextStyle(fontSize: 16, color: Color(0xFF0D47A1), fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          ),

          // 3. Lessons List
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(alignment: Alignment.centerLeft, child: Text("Lessons", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: course.lessons.length,
              itemBuilder: (context, index) {

              final String currentLesson = course.lessons[index];

              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("${index + 1}")),
                  title: Text(currentLesson), 
                  trailing: const Icon(Icons.play_circle_fill, color: Colors.blueAccent),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonPlayerScreen(
                        lessonTitle: currentLesson, 
                      ),
                    ),
                  ),
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