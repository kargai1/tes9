import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyglamam());
}

class BenimUyglamam extends StatelessWidget {
  const BenimUyglamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'BU GÜN NE YESEM?',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: yemekSayfasi()),
    );
  }
}

class yemekSayfasi extends StatefulWidget {
  const yemekSayfasi({super.key});

  @override
  State<yemekSayfasi> createState() => _yemekSayfasiState();
}

class _yemekSayfasiState extends State<yemekSayfasi> {
  int corbaNo = 1;
  List corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuk Suyu',
    'Düğün Corbası',
    'Yoğurtlu Corba'
  ];
  List yemekAdlari = ['Karnıyarık', 'Mantı', 'Kuru Fasulye', 'İçli Köfte'];
  List tatliAdlari = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazandibi', 'Dondurma'];
  int yemekNo = 1;
  int tatliNo = 1;
  void yemekDegistir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(4) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blueGrey),
                  ),
                  onPressed: yemekDegistir,
                  child: Image.asset('images/corba_$corbaNo.jpg'),
                ),
              ),
            ),
            Text(
              corbaAdlari[corbaNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.brown[900],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          overlayColor:
                              MaterialStatePropertyAll(Colors.blueGrey)),
                      onPressed: yemekDegistir,
                      child: Image.asset('images/yemek_$yemekNo.jpg'))),
            ),
            Text(
              yemekAdlari[yemekNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.brown[900],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          overlayColor:
                              MaterialStatePropertyAll(Colors.blueGrey)),
                      onPressed: yemekDegistir,
                      child: Image.asset('images/tatli_$tatliNo.jpg'))),
            ),
            Text(
              tatliAdlari[tatliNo - 1],
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.brown[900],
              ),
            )
          ],
        ),
      ),
    );
  }
}
