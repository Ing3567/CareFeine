import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class sum3 extends StatelessWidget {
  const sum3({
    Key? key,
    required this.selectedCoffee,
    required this.selectedDisease,
  }) : super(key: key);
  final int selectedCoffee;
  final int selectedDisease;

  @override
  Widget build(BuildContext context) {
    List<String> Pre = [
      'asset/sum/sum3/Preame.png',
      'asset/sum/sum3/Precap.png',
      'asset/sum/sum3/Preesp.png',
      'asset/sum/sum3/Preflat.png',
      'asset/sum/sum3/Prelatt.png',
      'asset/sum/sum3/Premac.png',
      'asset/sum/sum3/Premoc.png',
    ];

    List<String> Anx = [
      'asset/sum/sum3/Anxame.png',
      'asset/sum/sum3/Anxcap.png',
      'asset/sum/sum3/Anxesp.png',
      'asset/sum/sum3/Anxflat.png',
      'asset/sum/sum3/Anxlatt.png',
      'asset/sum/sum3/Anxmac.png',
      'asset/sum/sum3/Anxmoc.png',
    ];

    List<String> Bip = [
      'asset/sum/sum3/Bipame.png',
      'asset/sum/sum3/Bipcap.png',
      'asset/sum/sum3/Bipesp.png',
      'asset/sum/sum3/Bipflat.png',
      'asset/sum/sum3/Biplatt.png',
      'asset/sum/sum3/Bipmac.png',
      'asset/sum/sum3/Bipmoc.png',
    ];

    List<String> Ble = [
      'asset/sum/sum3/Bleame.png',
      'asset/sum/sum3/Blecap.png',
      'asset/sum/sum3/Bleesp.png',
      'asset/sum/sum3/Bleflat.png',
      'asset/sum/sum3/Blelatt.png',
      'asset/sum/sum3/Blemac.png',
      'asset/sum/sum3/Blemoc.png',
    ];

    List<String> Hea = [
      'asset/sum/sum3/Heaame.png',
      'asset/sum/sum3/Heacap.png',
      'asset/sum/sum3/Heaesp.png',
      'asset/sum/sum3/Heaflat.png',
      'asset/sum/sum3/Healatt.png',
      'asset/sum/sum3/Heamac.png',
      'asset/sum/sum3/Heamoc.png',
    ];

    List<String> Diab = [
      'asset/sum/sum3/Diabame.png',
      'asset/sum/sum3/Diabcap.png',
      'asset/sum/sum3/Diabesp.png',
      'asset/sum/sum3/Diabflat.png',
      'asset/sum/sum3/Diablatt.png',
      'asset/sum/sum3/Diabmac.png',
      'asset/sum/sum3/Diabmoc.png',
    ];

    List<String> Epi = [
      'asset/sum/sum3/Epiame.png',
      'asset/sum/sum3/Epicap.png',
      'asset/sum/sum3/Epiesp.png',
      'asset/sum/sum3/Epiflat.png',
      'asset/sum/sum3/Epilatt.png',
      'asset/sum/sum3/Epimac.png',
      'asset/sum/sum3/Epimoc.png',
    ];

    List<String> Gla = [
      'asset/sum/sum3/Glaame.png',
      'asset/sum/sum3/Glacap.png',
      'asset/sum/sum3/Glaesp.png',
      'asset/sum/sum3/Glaflat.png',
      'asset/sum/sum3/Glalatt.png',
      'asset/sum/sum3/Glamac.png',
      'asset/sum/sum3/Glamoc.png',
    ];

    List<String> Hig = [
      'asset/sum/sum3/Higame.png',
      'asset/sum/sum3/Higcap.png',
      'asset/sum/sum3/Higesp.png',
      'asset/sum/sum3/Higflat.png',
      'asset/sum/sum3/Higlatt.png',
      'asset/sum/sum3/Higmac.png',
      'asset/sum/sum3/Higmoc.png',
    ];

    List<String> Weak = [
      'asset/sum/sum3/Weakame.png',
      'asset/sum/sum3/Weakcap.png',
      'asset/sum/sum3/Weakesp.png',
      'asset/sum/sum3/Weakflat.png',
      'asset/sum/sum3/Weaklatt.png',
      'asset/sum/sum3/Weakmac.png',
      'asset/sum/sum3/Weakmoc.png',
    ];

    List<String> Park = [
      'asset/sum/sum3/Parkame.png',
      'asset/sum/sum3/Parkcap.png',
      'asset/sum/sum3/Parkesp.png',
      'asset/sum/sum3/Parkflat.png',
      'asset/sum/sum3/Parklatt.png',
      'asset/sum/sum3/Parkmac.png',
      'asset/sum/sum3/Parkmoc.png',
    ];

    Widget getCof(int selectedDisease) {
      switch (selectedDisease) {
        case 0:
          return Image.asset(Anx[this.selectedCoffee]);
        case 1:
          return Image.asset(Bip[this.selectedCoffee]);
        case 2:
          return Image.asset(Ble[this.selectedCoffee]);
        case 3:
          return Image.asset(Diab[this.selectedCoffee]);
        case 4:
          return Image.asset('asset/sum/sum3/97.png');
        case 5:
          return Image.asset(Epi[this.selectedCoffee]);
        case 6:
          return Image.asset(Gla[this.selectedCoffee]);
        case 7:
          return Image.asset(Hea[this.selectedCoffee]);
        case 8:
          return Image.asset(Hig[this.selectedCoffee]);
        case 9:
          return Image.asset('asset/sum/sum3/97.png');
        case 10:
          return Image.asset('asset/sum/sum3/97.png');
        case 11:
          return Image.asset(Park[this.selectedCoffee]);
        case 12:
          return Image.asset(Pre[this.selectedCoffee]);
        case 13:
          return Image.asset('asset/sum/sum3/97.png');
        case 14:
          return Image.asset(Weak[this.selectedCoffee]);
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
