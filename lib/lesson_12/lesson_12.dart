// ignore_for_file:  lines_longer_than_80_chars

import 'package:flutter/material.dart';

class Lesson12 extends StatefulWidget {
  const Lesson12({super.key});

  @override
  State<Lesson12> createState() => _Lesson12State();
}

class _Lesson12State extends State<Lesson12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2FC),

      // app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Оцінка візиту до магазину',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight(600),
            ),
          ),
        ),
      ),
      // end app bar

      // body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // rating
            Container(
              padding: EdgeInsets.all(16),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rating.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rating.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rating.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rating.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rating0.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // end rating

            // text1
            Container(
              padding: EdgeInsets.all(16),
              height: 60,

              child: Text(
                textAlign: TextAlign.center,
                'Яку оціночку поставите відділам?',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight(600),
                ),
              ),
            ),
            // end text1

            // department widgets
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CardItem(depTitle: items[index]['depTitle'] ?? '');
              },
              separatorBuilder: (_, _) => SizedBox(height: 8),
            ),
            // end department widgets

            // what to add
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 8, left: 16, right: 16),
              height: 120,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Є що додати?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),

                  SizedBox(height: 8),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Поділіться загальним враженням',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // end what to add
          ],
        ),
      ),
      // end body

      // bottomNavigationBar
      bottomNavigationBar: ColoredBox(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 0,
              left: 16,
              right: 16,
            ),
            color: Colors.white,

            child: SizedBox(
              height: 56,
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  //  print('Button was pressed!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1135BA),
                  shape: const StadiumBorder(),
                ),

                child: const Text(
                  'Надіслати',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      // end bottomNavigationBar

    );
  }
}
// end screen

// CardItem
class CardItem extends StatelessWidget {
  const CardItem({required this.depTitle, super.key});
  final String depTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1 block - Відділ
          Container(
            padding: EdgeInsets.all(8),
            height: 40,

            child: Text(
              depTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // 2 block - Обслуговування
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFF6F8FD),
              border: Border.all(
                color: Color.fromARGB(10, 19, 19, 30),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Обслуговування',
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(width: 12),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff2358D1),
                      child: Icon(Icons.thumb_down, color: Colors.white),
                    ),

                    SizedBox(width: 12),

                    CircleAvatar(
                      backgroundColor: Color.fromARGB(10, 19, 19, 30),
                      child: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 8),

          // 3 block - Асортимент
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFF6F8FD),
              border: Border.all(
                color: Color.fromARGB(10, 19, 19, 30),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Асортимент',
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(width: 12),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(10, 19, 19, 30),
                      child: Icon(Icons.thumb_down, color: Colors.white),
                    ),

                    SizedBox(width: 12),

                    CircleAvatar(
                      backgroundColor: Color(0xff2358D1),
                      child: Icon(Icons.thumb_up_alt, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 8),

          // 4 block - Розкажіть докладніше
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),

            child: TextField(
              decoration: InputDecoration(
                hintText: 'Розкажіть докладніше',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Items for card
final List<Map<String, String>> items = [
  {'depTitle': 'Випічка'},
  {'depTitle': 'Лавка традицій'},
  {'depTitle': 'Бакалія'},
];
