import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class crsqanner extends StatefulWidget {
  const crsqanner({Key? key}) : super(key: key);

  @override
  State<crsqanner> createState() => _crsqannerState();
}

// ignore: camel_case_types
class _crsqannerState extends State<crsqanner> {
  var qrstr = "add data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("creating QR code"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              BarcodeWidget(
                data: qrstr,
                barcode: Barcode.qrCode(),
                color: Colors.blue,
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      qrstr = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: 'Enter your data here',
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2))),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ],
      ),
    );
  }
}
