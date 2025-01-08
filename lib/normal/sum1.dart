import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Sum extends StatelessWidget {
  final int selectedCoffee;

  const Sum({
    Key? key,
    required this.selectedCoffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> coffeeImages = [
      'asset/sum/sum1/ame.png',
      'asset/sum/sum1/cap.png',
      'asset/sum/sum1/esp.png',
      'asset/sum/sum1/flat.png',
      'asset/sum/sum1/latt.png',
      'asset/sum/sum1/mac.png',
      'asset/sum/sum1/moc.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Normal'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // เพิ่มส่วนนี้เพื่อให้สามารถเลื่อนขึ้นลงได้
        scrollDirection: Axis.vertical, // กำหนดการเลื่อนเป็นแนวตั้ง
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(coffeeImages[selectedCoffee]),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text('home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
