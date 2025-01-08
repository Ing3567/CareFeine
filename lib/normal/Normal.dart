import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/sum3.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/normal/sum1.dart';

class submenu extends StatefulWidget {
  final String type;

  const submenu({Key? key, required this.type}) : super(key: key);

  @override
  State<submenu> createState() => _submenuState();
}

class _submenuState extends State<submenu> {
  int selectedButtonIndexcoffe = -1;
  int selectedButtonIndexage = -1;
  int selectedButtonIndexseed = -1;
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
  List<String> buttonValuescoffe = [
    'asset/image/americano.png',
    'asset/image/cappuccino.png',
    'asset/image/espresso.png',
    'asset/image/flat white.png',
    'asset/image/latte.png',
    'asset/image/macchiato.png',
    'asset/image/mocha.png'
  ];

  List<String> coffe = [
    'americano',
    'cappuccino',
    'espresso',
    'flat white',
    'latte',
    'macchiato',
    'mocha'
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
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
                              builder: (context) => Sum(
                                selectedCoffee: selectedButtonIndexcoffe,
                              ),
                            ),
                          );
                        }
                      } else {
                        // แจ้งเตือนว่าต้องเลือกกาแฟ
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please select a menu,age and seed.'),
                          ),
                        );
                      }
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
