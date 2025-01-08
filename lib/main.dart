import 'package:flutter/material.dart';
import 'package:flutter_application_1/concern/Concern.dart';
import 'package:flutter_application_1/normal/Normal.dart';
import 'package:flutter_application_1/therapy/Therapy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.brown,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CareFeine'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButtonnormal(
              imagePath: 'asset/image/Finaltypenormal.png',
              value: 'Normal',
              context: context,
            ),
            SizedBox(height: 50),
            buildButtontherapy(
              imagePath: 'asset/image/Finaltypetherapy.png',
              value: 'Therapy',
              context: context,
            ),
            SizedBox(height: 50),
            Concern(
              imagePath: 'asset/image/Finaltypeconcern.png',
              value: 'Concern',
              context: context,
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

Widget buildButtonnormal({
  required String imagePath,
  required String value,
  required BuildContext context,
}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => submenu(type: value),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildButtontherapy({
  required String imagePath,
  required String value,
  required BuildContext context,
}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => subtherapy(type: value),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
    ),
  );
}

Widget Concern({
  required String imagePath,
  required String value,
  required BuildContext context,
}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => concern(),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
    ),
  );
}
