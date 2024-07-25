import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("SAYFA B",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));

              }, child: const Text("SAYFA Y GİT",style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
              ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,fixedSize: const Size(200, 100)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
