import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List<Widget> secimler = [];



List <Soru> soruBankasi = [


  Soru(soruMetni:'2010-2011 Sezonu Şampiyonu Trabzonspordur', soruYaniti: true ),
  Soru(soruMetni:' Futbol Sahasının Büyüklüğü 50*100 Metredir', soruYaniti: true ),
  Soru(soruMetni:'Kuyucaklı Yusuf Adlı Eser Yaşar Kemale Aittir', soruYaniti: false ),
  Soru(soruMetni:'Fransız İhtilali 1789-1799 Arasında Gerçekleşmiştir', soruYaniti: true ),
  Soru(soruMetni:'Osmanlı İmparatorluğu Yaklaşık 4 Asır Hüküm Sürmüştür', soruYaniti: false ),
  Soru(soruMetni:'Fas ın Başkenti Kahiredir', soruYaniti: false ),
  Soru(soruMetni:' Sezai Karakoç ''İkinci Yeni'' akımına dahildir', soruYaniti: true ),
  Soru(soruMetni:'Türk Silahlı Kuvvetlerinde Mareşal Rütbesi En Yüksek Rütbedir', soruYaniti: true ),
  Soru(soruMetni:'Hücre Yapısında Yer Alan Organelin Adı Lizozomdur ', soruYaniti: false ),
  Soru(soruMetni:'Aspirinin ilk kez çıkış yılı 1920 dir', soruYaniti: false ),
  Soru(soruMetni:'Fenerbahçe 4.Yıldızı Takmıştır', soruYaniti: false ),
  Soru(soruMetni:'Ankara İlimizin Araba ve Şehir Kod Numarası 29 dur', soruYaniti: false ),
  Soru(soruMetni:'Aspirinin Hammaddesi Söğüt müdür', soruYaniti: true ),
  Soru(soruMetni:'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false ),
  Soru(soruMetni:'Dünyadaki tavuk sayısı insan sayısından fazladır', soruYaniti: true ),
  Soru(soruMetni:'Kelebeklerin ömrü bir gündür', soruYaniti: false ),
  Soru(soruMetni:'Dünya düzdür', soruYaniti: false ),
  Soru(soruMetni:'Kaju fıstığı aslında bir meyvenin sapıdır', soruYaniti: true ),
  Soru(soruMetni:'Fatih Sultan Mehmet hiç patates yememiştir', soruYaniti: true ),
  Soru(soruMetni:'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true ),


];


  int soruIndex=0;


  void button(bool isTrue ){

    return  setState(() {

      soruBankasi[soruIndex].soruYaniti== isTrue
          ?secimler.add(kDogruIconu):
      secimler.add(kYanlisIconu);
      soruIndex++;

      if(soruBankasi.length==soruIndex){



        soruIndex=0;
        secimler=[];

      }


    }
    );


  }



  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                soruBankasi[soruIndex].soruMetni,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 5,
          spacing: 5,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {

                         button(false);

                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {

                           button(true);

                          },
                        ))),
              ])),
        )
      ],
    );
  }
}


class Soru {
  late String soruMetni;
  late bool soruYaniti;

  Soru ({required this.soruMetni,required this.soruYaniti});
}