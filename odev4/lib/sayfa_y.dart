import 'package:flutter/material.dart';
import 'package:odev4/sayfa_gecisleri.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => SayfaGecisleri()),
          (route) => false,
    );
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("SAYFA Y",style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
                ),
              ],
            ),
        
          ),
        ),
      ),
    );;
  }
}
