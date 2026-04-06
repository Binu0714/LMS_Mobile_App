import 'package:flutter/material.dart';
import '../models/course.dart';
import 'course_details_screen.dart';

class CourseListScreen extends StatelessWidget {
  final List<Course> courses = [
    Course(title: "Flutter Basics", instructor: "Binu", description: "Learn UI/UX basics", image: "assets/images/logo.jpg", lessons: ["Intro", "Widgets"]),
    Course(title: "Dart Masterclass", instructor: "John", description: "Learn logic", image: "assets/images/logo.jpg", lessons: ["Variables", "Functions"]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Courses")),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(course.image, width: 50),
              title: Text(course.title),
              subtitle: Text(course.instructor),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailsScreen(course: course))),
            ),
          );
        },
      ),
    );
  }
}