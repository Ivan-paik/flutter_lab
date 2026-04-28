import 'package:flutter/material.dart';

class LessonElevenSubTask4 extends StatelessWidget {
  const LessonElevenSubTask4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Lesson 11 (HW 7) Task4'),
        backgroundColor: Colors.blue.shade100,
      ),

      body: Center(
        child:Column(
          children: [

            // синій блок
            Expanded(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Padding(
                  padding: EdgeInsets.all(10),

                  child: Align(
                    alignment: Alignment.topLeft,

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

            SizedBox(height: 8),

            // зелений блок
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Padding(
                padding: EdgeInsets.all(10),

                child: Align(
                  alignment: Alignment.center,

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

            SizedBox(height: 8),

            // червоний блок
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Padding(
                padding: EdgeInsets.all(10),

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
          ],
        ),
      ),
    );
  }
}
