import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scan_generate/qr_generator.dart';
import 'package:qr_scan_generate/qr_scanner.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Home Screen"),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: FloatingActionButton(
                    heroTag: "btn1",
                    backgroundColor: Colors.red,
                    onPressed: () async {
                      String barcodeScanRes =
                          await FlutterBarcodeScanner.scanBarcode(
                              "#ff6666", "Cancel", false, ScanMode.DEFAULT);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ScanQR(qrCodeResult:barcodeScanRes)));
                    },
                    child: Text(
                      "Scan QR Code",
                      style: TextStyle(
                          color: Colors.indigo.shade900, fontSize: 30),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                      side: BorderSide(color: Colors.indigo.shade900),
                    ),
                  ),
                ),

                //Second Button
                Expanded(
                  child: FloatingActionButton(
                    heroTag: "btn2",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GenerateQR()));
                    },
                    child: Text(
                      "Generate QR Code",
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                      side: BorderSide(color: Colors.indigo.shade900),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
