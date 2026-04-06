import 'package:flutter/material.dart';

class Course {
  final String title;
  final String instructor;
  final String description;
  final IconData icon;
  final List<String> lessons;

  Course({
    required this.title,
    required this.instructor,
    required this.description,
    required this.icon,
    required this.lessons,
  });
  
}