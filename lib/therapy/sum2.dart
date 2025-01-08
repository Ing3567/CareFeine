import 'package:flutter/material.dart';
import 'package:flutter_application_1/therapy/therapycoffe.dart';
import 'package:flutter_application_1/main.dart';

class sum2 extends StatelessWidget {
  const sum2({
    Key? key,
    required this.selectedCoffee,
    required this.selectedDisease,
  }) : super(key: key);
  final int selectedCoffee;
  final int selectedDisease;

  @override
  Widget build(BuildContext context) {
    List<String> diseasesImages = [
      'asset/sum/sum2/Dep.png',
      'asset/sum/sum2/Dia.png',
      'asset/sum/sum2/Alz.png',
      'asset/sum/sum2/Can.png',
      'asset/sum/sum2/Par.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Therapy'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // กำหนดการเลื่อนเป็นแนวตั้ง
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(diseasesImages[selectedDisease]),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Text('home'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => coffe(
                            selectedCoffee: selectedCoffee,
                            selectedDisease: selectedDisease,
                          ),
                        ),
                      );
                    },
                    child: Text('next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
