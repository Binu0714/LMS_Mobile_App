import 'package:flutter/material.dart';
import '../models/course.dart';
import 'lesson_player_screen.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Column(
        children: [
          Image.asset(course.image, height: 200, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(course.description, style: const TextStyle(fontSize: 18)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: course.lessons.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(course.lessons[index]),
                trailing: const Icon(Icons.play_circle_fill, color: Colors.blueAccent),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LessonPlayerScreen())),
              ),
            ),
          ),
        ],
      ),
    );
  }
}