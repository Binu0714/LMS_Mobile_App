import 'package:flutter/material.dart';
import '../models/course.dart';
import 'course_details_screen.dart';

class CourseListScreen extends StatelessWidget {
  final List<Course> courses = [
  Course(title: "Flutter Basics", instructor: "Binu Rajakaruna", description: "Learn UI/UX basics", icon: Icons.flutter_dash, lessons: ["Intro", "Widgets", "State Management", "Navigation", "Animations"]),
  Course(title: "Dart Programming", instructor: "John Curran", description: "Programming logic", icon: Icons.code, lessons: ["Variables", "Functions", "OOP", "Async", "Packages"]),
  Course(title: "UI/UX Design", instructor: "Sarah Johnson", description: "Design principles", icon: Icons.design_services, lessons: ["Figma Basics", "Colors", "Typography", "Prototyping", "User Testing"]),
  Course(title: "Firebase Auth", instructor: "Mike Davis", description: "Secure your apps", icon: Icons.lock, lessons: ["Login", "Signup", "Password Reset", "Social Auth", "Email Verification"]),
  Course(title: "REST APIs", instructor: "Elena Rodriguez", description: "Connect to backend", icon: Icons.api, lessons: ["JSON", "Requests", "Error Handling", "Authentication", "Pagination"]),
  Course(title: "State Management", instructor: "David Kim", description: "Provider & Riverpod", icon: Icons.layers, lessons: ["Provider", "Bloc", "Riverpod", "GetX", "MobX"]),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("My Courses", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: courses.length, 
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Icon(course.icon, size: 40, color: Colors.blueAccent),
              ),
              title: Text(course.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Instructor: ${course.instructor}"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.blueAccent),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailsScreen(course: course))),
            ),
          );
        },
      ),
    );
  }
}