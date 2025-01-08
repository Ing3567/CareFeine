import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/sum3.dart';
import 'package:flutter_application_1/main.dart';

class Memu extends StatefulWidget {
  const Memu({
    Key? key,
    required this.selectedDisease,
  }) : super(key: key);
  final int selectedDisease;
  @override
  State<Memu> createState() => _MemuState();
}

class _MemuState extends State<Memu> {
  int selectedButtonIndexcoffe = -1;

  List<String> buttonValuescoffe = [
    'asset/image/americano.png',
    'asset/image/cappuccino.png',
    'asset/image/espresso.png',
    'asset/image/flat white.png',
    'asset/image/latte.png',
    'asset/image/macchiato.png',
    'asset/image/mocha.png'
  ];

  void onPressedButtoncoffe(int index) {
    setState(() {
      if (selectedButtonIndexcoffe == index) {
        selectedButtonIndexcoffe = -1;
      } else {
        selectedButtonIndexcoffe = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Concern'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Coffees',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Column(
                children: buttonValuescoffe.map((imagePath) {
                  int index = buttonValuescoffe.indexOf(imagePath);
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => onPressedButtoncoffe(index),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            selectedButtonIndexcoffe == index
                                ? Color.fromARGB(149, 202, 114, 38)
                                : Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // กำหนดความโค้งของมุมปุ่ม
                          ),
                        ),
                      ),
                      child: Image.asset(imagePath),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
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
                      if (selectedButtonIndexcoffe != -1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sum3(
                              selectedCoffee: selectedButtonIndexcoffe,
                              selectedDisease: widget.selectedDisease,
                            ),
                          ),
                        );
                      } else {
                        // แจ้งเตือนว่าต้องเลือกทั้งสองอย่าง
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please select both menu.')),
                        );
                      }
                    },
                    child: Text('next'),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
