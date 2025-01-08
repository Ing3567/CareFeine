import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/diseases.dart';
import 'package:flutter_application_1/main.dart';

class concern extends StatelessWidget {
  const concern({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> diseases = [
      'asset/concern/anxiety-removebg-preview.png',
      'asset/concern/bipolar-removebg-preview.png',
      'asset/concern/bleeding-removebg-preview.png',
      'asset/concern/diabetes-removebg-preview (1).png',
      'asset/concern/diarrhea-removebg-preview.png',
      'asset/concern/epilepsy-removebg-preview.png',
      'asset/concern/glaucoma-removebg-preview.png',
      'asset/concern/heart_condition-removebg-preview.png',
      'asset/concern/high_blood_pressure-removebg-preview.png',
      'asset/concern/irritable_bowel_syndrome-removebg-preview.png',
      'asset/concern/loss_of_control-removebg-preview.png',
      'asset/concern/parkinson-removebg-preview.png',
      'asset/concern/pregnancy-removebg-preview.png',
      'asset/concern/schizophrenia-removebg-preview.png',
      'asset/concern/weak_bone-removebg-preview.png',
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
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: diseases.map((key) {
                    int index = diseases.indexOf(key);
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Diseases(
                                      type: index,
                                    )),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary:
                              Colors.white, // ตั้งค่าสีพื้นหลังของปุ่มเป็นสีขาว
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // ทำให้มุมของปุ่มโค้งมน
                          ),
                          padding: EdgeInsets
                              .zero, // ตั้งค่า padding เป็น 0 เพื่อให้ภาพขนาดพอดีกับปุ่ม
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(
                            key,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
