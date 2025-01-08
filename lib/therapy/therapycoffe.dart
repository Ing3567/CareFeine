import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class coffe extends StatelessWidget {
  const coffe({
    Key? key,
    required this.selectedCoffee,
    required this.selectedDisease,
  }) : super(key: key);
  final int selectedCoffee;
  final int selectedDisease;

  @override
  Widget build(BuildContext context) {
    List<String> Alz = [
      'asset/therapy/Alzame.png',
      'asset/therapy/Alzcap.png',
      'asset/therapy/Alzesp.png',
      'asset/therapy/Alzflat.png',
      'asset/therapy/Alzlatt.png',
      'asset/therapy/Alzmac.png',
      'asset/therapy/Alzmoc.png',
    ];

    List<String> Dep = [
      'asset/therapy/Depame.png',
      'asset/therapy/Depcap.png',
      'asset/therapy/Depesp.png',
      'asset/therapy/Depflat.png',
      'asset/therapy/Deplatt.png',
      'asset/therapy/Depmac.png',
      'asset/therapy/Depmoc.png',
    ];

    List<String> Dia = [
      'asset/therapy/Diaame.png',
      'asset/therapy/Diacap.png',
      'asset/therapy/Diaesp.png',
      'asset/therapy/Diaflat.png',
      'asset/therapy/Dialatt.png',
      'asset/therapy/Diamac.png',
      'asset/therapy/Diamoc.png',
    ];

    List<String> Can = [
      'asset/therapy/Caname.png',
      'asset/therapy/Cancap.png',
      'asset/therapy/Canesp.png',
      'asset/therapy/Canflat.png',
      'asset/therapy/Canlatt.png',
      'asset/therapy/Canmac.png',
      'asset/therapy/Canmoc.png',
    ];

    List<String> Par = [
      'asset/therapy/Parame.png',
      'asset/therapy/Parcap.png',
      'asset/therapy/Paresp.png',
      'asset/therapy/Parflat.png',
      'asset/therapy/Parlatt.png',
      'asset/therapy/Parmac.png',
      'asset/therapy/Parmoc.png',
    ];

    Widget getCof(int selectedDisease) {
      switch (selectedDisease) {
        case 0:
          return Image.asset(Dep[selectedCoffee]);
        case 1:
          return Image.asset(Dia[selectedCoffee]);
        case 2:
          return Image.asset(Alz[selectedCoffee]);
        case 3:
          return Image.asset(Can[selectedCoffee]);
        case 4:
          return Image.asset(Par[selectedCoffee]);
        default:
          return Text('No image available for this selection');
      }
    }

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
            children: [
              getCof(selectedDisease),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
