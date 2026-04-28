import 'package:flutter/material.dart';

class LessonElevenSubTask1 extends StatelessWidget {
  const LessonElevenSubTask1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Lesson 11 (HW 7) Task1'),
        backgroundColor: Colors.blue.shade100,
      ),

      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
