import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/menu.dart';
import 'package:flutter_application_1/concern/sum3.dart';
import 'package:flutter_application_1/main.dart';

class Diseases extends StatelessWidget {
  final int type;

  const Diseases({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> buttonValuesdisease = [
      'asset/diseases/Anx.png',
      'asset/diseases/Bip.png',
      'asset/diseases/Ble.png',
      'asset/diseases/Diab.png',
      'asset/diseases/Diar.png',
      'asset/diseases/Epi.png',
      'asset/diseases/Gla.png',
      'asset/diseases/Hea.png',
      'asset/diseases/Hig.png',
      'asset/diseases/Irr.png',
      'asset/diseases/Loss.png',
      'asset/diseases/Park.png',
      'asset/diseases/Pre.png',
      'asset/diseases/Sch.png',
      'asset/diseases/Weak.png',
    ];
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
            children: [
              Image.asset(buttonValuesdisease[type]),
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
                      if (type == 4 || type == 9 || type == 10 || type == 13) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sum3(
                              selectedCoffee: 0,
                              selectedDisease: type,
                            ),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Memu(
                              selectedDisease: type,
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('next'),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
