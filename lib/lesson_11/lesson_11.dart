import 'package:flutter/material.dart';
//import 'package:flutter_lab/lesson_11/lesson_11 copy.dart';
import 'package:flutter_lab/lesson_11/lesson_11_subtask1.dart';
import 'package:flutter_lab/lesson_11/lesson_11_subtask2.dart';
import 'package:flutter_lab/lesson_11/lesson_11_subtask3.dart';
import 'package:flutter_lab/lesson_11/lesson_11_subtask4.dart';
import 'package:flutter_lab/lesson_11/lesson_11_subtask5.dart';

class LessonEleven extends StatelessWidget {
  const LessonEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 11 (HW 7)'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationCard(
              title: 'Subtask1',
              description:
                  'Container, SizedBox, Center, No AI',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const LessonElevenSubTask1(),
                ),
              ),
            ),

            NavigationCard(
              title: 'Subtask2',
              description:
                  'Container, SizedBox, Padding, Align, Center, Text, '
                  'AI 30%',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const LessonElevenSubTask2(),
                ),
              ),
            ),

            NavigationCard(
              title: 'Subtask3',
              description:
                  'Container, SizedBox, Padding, Align, Center, Text, ' 
                  'Row, AI 50%',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const LessonElevenSubTask3(),
                ),
              ),
            ),

           NavigationCard(
              title: 'Subtask4',
              description:
                  'Container, SizedBox, Padding, Align, Center, Text, '
                  'Row, Column, Expanded, AI 90%',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const LessonElevenSubTask4(),
                ),
              ),
            ),

            NavigationCard(
              title: 'Subtask5',
              description:
                  'Stateless+Stateful Widgets, '
                  'AnimatedContainer, Gesture Detector, 100% AI',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const LessonElevenSubTask5(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.blue.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_forward, color: Colors.blue.shade700),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
