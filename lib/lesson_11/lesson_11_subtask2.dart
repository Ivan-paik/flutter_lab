import 'package:flutter/material.dart';

class LessonElevenSubTask2 extends StatelessWidget {
  const LessonElevenSubTask2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Lesson 11 (HW 7) Task2'),
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

          child: Padding(
            padding: const EdgeInsets.all(10),

            child: Align(
              alignment: Alignment.bottomRight,

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Color(0xFFFFFD71)),

                  SizedBox(width: 10),

                  Text(
                    'Привіт, Flutter!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(Icons.star, color: Color(0xFFFFFD71)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
