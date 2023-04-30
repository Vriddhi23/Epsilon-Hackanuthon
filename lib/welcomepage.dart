import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:qrplease/qrscan.dart';
import 'package:qrplease/scanner.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }
  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }
  String _scanBarcode = 'Unknown';

  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
//barcode scanner flutter ant
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
  @override
  Widget build(BuildContext context) {
    // double w=MediaQuery.of(context).size.width;
    // double h=MediaQuery.of(context).size.height;
    return Scaffold(
      body:GridView.count(
        crossAxisCount: 2,
        children: [
        Container(
        width: 150,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border.all(color: Colors.pink.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(top: 20, left: 20,),
        child: TextButton(
          onPressed: () => scanQR(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.camera_alt, size: 50, color: Colors.redAccent,),
              Text('Scan'),
            ],
          ),
        ),
      ),
      Container(
        width: 150,
        height: 150,

        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border.all(color: Colors.pink.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(top: 20, left: 10,bottom: 0,right: 10),
        child: TextButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.account_circle_outlined, size: 50, color: Colors.redAccent,),
              Text('Leads'),
            ],
          ),
        ),
      ),
      //SizedBox(height: 50,),
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border.all(color: Colors.pink.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(top:10,bottom: 20, left: 25),
        child: TextButton(
          onPressed: () => startBarcodeScanStream(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.qr_code_scanner, size: 50,color: Colors.redAccent,),
              Text('Generate QR Code'),
            ],
          ),
        ),
      ),
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border.all(color: Colors.pink.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(top:10,bottom: 20, left: 15,right: 10),
        child: TextButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.settings, size: 50, color: Colors.redAccent,),
              Text('Setting'),
            ],
          ),
        ),
      ),
      ],
      ),
    );
  }
  }