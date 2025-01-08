import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/sum3.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/therapy/sum2.dart';

class subtherapy extends StatefulWidget {
  final String type;

  const subtherapy({Key? key, required this.type}) : super(key: key);
  @override
  State<subtherapy> createState() => _subtherapyState();
}

class _subtherapyState extends State<subtherapy> {
  @override
  int selectedButtonIndexage = -1;
  int selectedButtonIndexseed = -1;
  int selectedButtonIndexdisease = -1;
  int selectedButtonIndexcoffe = -1;
  List<String> buttonValuesage = [
    'asset/image/0-17-removebg-preview.png',
    'asset/image/18-30-removebg-preview.png',
    'asset/image/31-59-removebg-preview.png',
    'asset/image/60++-removebg-preview.png',
  ];
  List<String> buttonValuesseed = [
    'asset/image/arabica-removebg-preview.png',
    'asset/image/robusta-removebg-preview.png'
  ];
  List<String> buttonValuesdisease = [
    'asset/image/depression-removebg-preview.png',
    'asset/image/diabetes-removebg-preview.png',
    'asset/image/alzheimer_s-removebg-preview.png',
    'asset/image/cancer-removebg-preview.png',
    'asset/image/parkinson_s-removebg-preview.png'
  ];

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

  void onPressedButtonage(int index) {
    //การทำงานของปุ่ม
    setState(() {
      if (selectedButtonIndexage == index) {
        selectedButtonIndexage = -1;
      } else {
        selectedButtonIndexage = index;
      }
    });
  }

  void onPressedButtonseed(int index) {
    //การทำงานของปุ่ม
    setState(() {
      if (selectedButtonIndexseed == index) {
        selectedButtonIndexseed = -1;
      } else {
        selectedButtonIndexseed = index;
      }
    });
  }

  void onPressedButtondisease(int index) {
    //การทำงานของปุ่ม
    setState(() {
      if (selectedButtonIndexdisease == index) {
        selectedButtonIndexdisease = -1;
      } else {
        selectedButtonIndexdisease = index;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Therapy'),
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
                'Age',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buttonValuesage.map((age) {
                    int index = buttonValuesage.indexOf(age);
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => onPressedButtonage(index),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              selectedButtonIndexage == index
                                  ? Color.fromARGB(149, 202, 114, 38)
                                  : Colors.white),
                          minimumSize: MaterialStateProperty.all(
                              Size(250, 83)), // กำหนดขนาดต่ำสุดของปุ่ม
                          maximumSize: MaterialStateProperty.all(
                              Size(250, 83)), // กำหนดขนาดสูงสุดของปุ่ม
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // กำหนดความโค้งของมุมปุ่ม
                            ),
                          ),
                        ),
                        child: Image.asset(age),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Diseases',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buttonValuesdisease.map((disease) {
                    int index = buttonValuesdisease.indexOf(disease);
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => onPressedButtondisease(index),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              selectedButtonIndexdisease == index
                                  ? Color.fromARGB(149, 202, 114, 38)
                                  : Colors.white),
                          minimumSize: MaterialStateProperty.all(
                              Size(100, 100)), // กำหนดขนาดต่ำสุดของปุ่ม
                          maximumSize: MaterialStateProperty.all(
                              Size(150, 150)), // กำหนดขนาดสูงสุดของปุ่ม
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // กำหนดความโค้งของมุมปุ่ม
                            ),
                          ),
                        ),
                        child: Image.asset(disease),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Coffee Beans',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buttonValuesseed.map((seed) {
                    int index = buttonValuesseed.indexOf(seed);
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => onPressedButtonseed(index),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              selectedButtonIndexseed == index
                                  ? Color.fromARGB(149, 202, 114, 38)
                                  : Colors.white),
                          minimumSize: MaterialStateProperty.all(
                              Size(100, 100)), // กำหนดขนาดต่ำสุดของปุ่ม
                          maximumSize: MaterialStateProperty.all(
                              Size(150, 150)), // กำหนดขนาดสูงสุดของปุ่ม
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // กำหนดความโค้งของมุมปุ่ม
                            ),
                          ),
                        ),
                        child: Image.asset(seed),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Menu',
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
                      if (selectedButtonIndexcoffe != -1 &&
                          selectedButtonIndexage != -1 &&
                          selectedButtonIndexseed != -1) {
                        if (selectedButtonIndexage == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => sum3(
                                selectedCoffee: 0,
                                selectedDisease: 4,
                              ),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => sum2(
                                selectedCoffee: selectedButtonIndexcoffe,
                                selectedDisease: selectedButtonIndexdisease,
                              ),
                            ),
                          );
                        }
                      } else {
                        // แจ้งเตือนว่าต้องเลือกกาแฟ
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Please select a menu,age,diseases and seed.'),
                          ),
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
