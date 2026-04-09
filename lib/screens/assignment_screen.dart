import 'package:flutter/material.dart';

class AssignmentScreen extends StatelessWidget {
  AssignmentScreen({super.key});

  final List<Map<String, String>> assignments = [
    {"title": "Flutter UI Project", "status": "Submitted", "desc": "Design dashboard"},
    {"title": "Dart Basics Quiz", "status": "Pending", "desc": "Multiple choice questions"},
    {"title": "Firebase Auth Task", "status": "Pending", "desc": "Implement login flow"},
    {"title": "API Integration", "status": "Submitted", "desc": "Connect to REST API"},
    {"title": "State Management", "status": "Pending", "desc": "Provider/Riverpod basics"},
    {"title": "Animation Project", "status": "Submitted", "desc": "Add custom animations"},
    {"title": "Database Integration", "status": "Pending", "desc": "Connect to SQLite"},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100], 
      appBar: AppBar(
        title: Text(
          "My Assignments", 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.05) 
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(screenWidth * 0.04),
        itemCount: assignments.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {

          bool isSubmitted = assignments[index]["status"] == "Submitted";

          return Card(
            elevation: 3,
            margin: EdgeInsets.only(bottom: screenWidth * 0.04), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.04)
            ),
            child: ListTile(
             
              contentPadding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04, 
                vertical: screenWidth * 0.015
              ),
              
              leading: Container(
                padding: EdgeInsets.all(screenWidth * 0.025),
                decoration: BoxDecoration(
                  color: isSubmitted ? Colors.blueAccent[50] : Colors.blueAccent[50],
                  borderRadius: BorderRadius.circular(screenWidth * 0.025), 
                ),
                child: Icon(
                  isSubmitted ? Icons.check_circle : Icons.pending_actions,
                  color: isSubmitted ? Colors.blueAccent : Colors.blueAccent,
                  size: screenWidth * 0.06, 
                ),
              ),
              title: Text(
                assignments[index]["title"]!, 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: screenWidth * 0.04 
                )
              ),
              subtitle: Text(
                assignments[index]["desc"]!,
                style: TextStyle(fontSize: screenWidth * 0.035) 
              ),
              trailing: Chip(
                label: Text(
                  assignments[index]["status"]!,
                  style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.03), 
                ),
                backgroundColor: isSubmitted ? Colors.green[400] : Colors.red[400],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          );
        },
      ),
    );
  }
}