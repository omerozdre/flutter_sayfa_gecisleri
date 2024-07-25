import 'package:flutter/material.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
       child: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("SAYFA X",style: TextStyle(
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
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red,fixedSize: const Size(200, 100)),
            ),
          ],
        ),
       ),
      ),
    );
  }
}
