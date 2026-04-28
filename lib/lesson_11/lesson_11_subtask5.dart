import 'package:flutter/material.dart';

class LessonElevenSubTask5 extends StatelessWidget {
  const LessonElevenSubTask5({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool bluePressed = false;
  bool greenPressed = false;
  bool redPressed = false;

  Widget starsAndText(bool active) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          active ? Icons.star : Icons.star_border,
          color: Color(0xFFFFFD71),
        ),

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

        Icon(
          active ? Icons.star : Icons.star_border,
          color: Color(0xFFFFFD71),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: const Text('Lesson 11 (HW 7) Task5'),
        backgroundColor: Colors.blue.shade100,
      ),      
      body: Center(
        child: Column(
          children: [

            // Синій
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bluePressed = !bluePressed;
                  });
                },

                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 300,

                  decoration: BoxDecoration(
                    color: bluePressed
                        ? Colors.blue.shade900
                        : Colors.blue,

                    borderRadius: BorderRadius.circular(16),

                    boxShadow: bluePressed
                        ? [
                            BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0,4),
                              color: Colors.black26,
                            ),
                          ]
                        : [],
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: starsAndText(bluePressed),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            // Зелений
            GestureDetector(
              onTap: () {
                setState(() {
                  greenPressed = !greenPressed;
                });
              },

              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 300,
                height: 150,

                decoration: BoxDecoration(
                  color: greenPressed
                      ? Colors.green.shade900
                      : Colors.green,

                  borderRadius: BorderRadius.circular(16),

                  boxShadow: greenPressed
                      ? [
                          BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0,4),
                            color: Colors.black26,
                          ),
                        ]
                      : [],
                ),

                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: starsAndText(greenPressed),
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            // Червоний
            GestureDetector(
              onTap: () {
                setState(() {
                  redPressed = !redPressed;
                });
              },

              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 300,
                height: 150,

                decoration: BoxDecoration(
                  color: redPressed
                      ? Colors.red.shade900
                      : Colors.red,

                  borderRadius: BorderRadius.circular(16),

                  boxShadow: redPressed
                      ? [
                          BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0,4),
                            color: Colors.black26,
                          ),
                        ]
                      : [],
                ),

                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: starsAndText(redPressed),
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
