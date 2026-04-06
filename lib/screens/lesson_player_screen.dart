import 'package:flutter/material.dart';

class LessonPlayerScreen extends StatelessWidget {
  const LessonPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lesson Player")),
      body: Column(
        children: [
          Container(height: 250, color: Colors.black, child: const Center(child: Icon(Icons.play_arrow, size: 100, color: Colors.white))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text("Introduction to Widgets", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                SizedBox(width: double.infinity, height: 50, child: ElevatedButton(onPressed: () {}, child: const Text("Complete Lesson")))
              ],
            ),
          )
        ],
      ),
    );
  }
}