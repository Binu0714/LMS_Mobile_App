import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'course_list_screen.dart';
import 'assignment_screen.dart';
import 'profile_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    CourseListScreen(),
    AssignmentScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.grey,

        onTap: (index) => setState(() => _currentIndex = index), 

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Assignments"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],

      ),
    );
  }
}