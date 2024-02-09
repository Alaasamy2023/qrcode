// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// ignore: camel_case_types
class readsqanner extends StatefulWidget {
  const readsqanner({Key? key}) : super(key: key);

  @override
  State<readsqanner> createState() => _readsqannerState();
}

// ignore: camel_case_types
class _readsqannerState extends State<readsqanner> {
  var qrstr = "let's Scan it";
  var height,width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanning QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Text(qrstr,style: const TextStyle(color: Colors.blue,fontSize: 30),),


            ElevatedButton(onPressed: scanQr, child: const Text(('Scanner'))),

            
            SizedBox(height: width,)
          ],
        ),
      )
    );
  }


  Future <void>scanQr()async{
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR).then((value){
        setState(() {
          qrstr=value;
        });
      });
    }catch(e){
      setState(() {
        qrstr='unable to read this';
      });
    }
  }
}
