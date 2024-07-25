import 'package:flutter/material.dart';
import 'package:odev4/sayfa_a.dart';
import 'package:odev4/sayfa_x.dart';

class SayfaGecisleri extends StatefulWidget {
  const SayfaGecisleri({super.key});

  @override
  State<SayfaGecisleri> createState() => _SayfaGecisleriState();
}

class _SayfaGecisleriState extends State<SayfaGecisleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa Geçişleri", style: TextStyle(
            fontSize: 30,
            color: Colors.amberAccent,fontWeight: FontWeight.bold),
        ),
        centerTitle:true,backgroundColor: Colors.lightBlueAccent),
      body: Container(
        color: Colors.cyanAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("ANASAYFA",style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
            ),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA()));

              },child: const Text("SAYFA A GİT",style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent,fixedSize: const Size(200, 100)),
            ),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()))
                  .then((value){
                print("Anaysayfaya Dönüldü");
              })
                  .then((value) {
                print("Anasayfaya Dönüldü.");
              });

            }, child: const Text("SAYFA X GİT",style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold),
            ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent,fixedSize: const Size(200, 100)),
            ),
          ],
        ),

      ),
    ),
    );

  }
}
