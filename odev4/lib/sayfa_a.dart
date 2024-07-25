import 'package:flutter/material.dart';
import 'package:odev4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("SAYFA A",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));

              }, child: const Text("SAYFA B GİT",style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
              ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize: const Size(200, 100)),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
