import 'package:flutter/material.dart';

class LessonPlayerScreen extends StatefulWidget {
  final String lessonTitle;

  const LessonPlayerScreen({super.key, required this.lessonTitle});

  @override
  State<LessonPlayerScreen> createState() => _LessonPlayerScreenState();
}

class _LessonPlayerScreenState extends State<LessonPlayerScreen> {
  bool isCompleted = false;

  void toggleCompletion() {
    setState(() {
      isCompleted = !isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.blue[900],
        title: const Text("Lesson Player", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: Colors.blue.withOpacity(0.3), blurRadius: 15, offset: const Offset(0, 8))],
            ),
            child: const Center(
              child: Icon(Icons.play_circle_fill, size: 80, color: Colors.white),
            ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.lessonTitle, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: Color(0xFF0D47A1))),
                  const SizedBox(height: 10),
                  const Text("Lesson 01 • 15 Mins", style: TextStyle(color: Colors.grey, fontSize: 16)),
                  const SizedBox(height: 20),
                  const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", 
                      style: TextStyle(color: Colors.black54, fontSize: 16, height: 1.5)),
                  
                  const SizedBox(height: 30), 
                  
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCompleted = !isCompleted;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: isCompleted ? Colors.green : const Color(0xFF0D47A1),
                        borderRadius: BorderRadius.circular(isCompleted ? 30 : 20),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(isCompleted ? Icons.check_circle : Icons.check_circle_outline,color : Colors.white),

                            const SizedBox(width: 10),
                            Text(isCompleted ? "Completed" : "Mark as Completed", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                            
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}