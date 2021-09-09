import 'package:flutter/material.dart';
import 'package:lib/CircleAvatar.dart';
import 'package:lib/bilgitesti.dart';
import 'package:lib/sayfagecis2.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/":(context)=>Sayfa21(), //proje Sayfa1 ekranıyla açılsın
      "/bilgitesti":(context)=>BilgiTesti(),// BilgiTesti sayfası ile devam etsin
      "/sayfagecis2":(context)=>AnaSayfa1(),
      "/CircleAvatar":(context)=>circleAvatar()
    },
  ));
}

class Sayfa21 extends StatefulWidget {
  const Sayfa21({Key? key}) : super(key: key);

  @override
  _Sayfa21State createState() => _Sayfa21State();
}

class _Sayfa21State extends State<Sayfa21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ekran Etkileşimleri"),
        ),
        body: Center(
          child: GridView.count(
            //????????????????????????????????????????????
            primary: false,
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/sayfagecis2"),
                child: Container(
                  color: Colors.blue[900],
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: Text("""Tek Tıklama
                  Test Sayfasına git
              """),
                ),
              ),
              GestureDetector(
                onDoubleTap: () => Navigator.pushNamed(context, "/sayfagecis2"),
                child: Container(
                  color: Colors.blue[900],
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: Text("""Çift Tıklama
                      sayfageçiş sayfasına git"""),
                ),
              ),
              GestureDetector(
                onLongPress: () =>
                    Navigator.pushNamed(context, "/CircleAvatar"),
                child: Container(
                  color: Colors.blue[900],
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: Text("""Uzun Basma
                  circle avatar sayfasına git"""),
                ),
              ),
              GestureDetector(
                
                child: Container(
                  color: Colors.blue[900],
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: Text("""""Tek Tıklama"""),
                ),
              ),
              Container(
                color: Colors.blue[900],
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text("""""Tek Tıklama"""),
              ),
              Container(
                color: Colors.blue[900],
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text("""""Tek Tıklama"""),
              ),
              Container(
                color: Colors.blue[900],
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text("""Tek Tıklama"""),
              ),
              Container(
                color: Colors.blue[900],
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text("""""Tek Tıklama"""),
              ),
            ],
          ),
        ));
  }
}
