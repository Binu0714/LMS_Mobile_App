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
    return Scaffold(
      backgroundColor: Colors.grey[100], 
      appBar: AppBar(
        title: const Text("My Assignments", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: assignments.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {

          bool isSubmitted = assignments[index]["status"] == "Submitted";

          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isSubmitted ? Colors.blueAccent[50] : Colors.blueAccent[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  isSubmitted ? Icons.check_circle : Icons.pending_actions,
                  color: isSubmitted ? Colors.blueAccent : Colors.blueAccent,
                ),
              ),
              title: Text(
                assignments[index]["title"]!, 
                style: const TextStyle(fontWeight: FontWeight.bold)
              ),
              subtitle: Text(assignments[index]["desc"]!),
              trailing: Chip(
                label: Text(assignments[index]["status"]!,style: TextStyle(color: Colors.white),),
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