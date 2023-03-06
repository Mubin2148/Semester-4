import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQR extends StatefulWidget {
  ScanQR({this.qrCodeResult});

  dynamic qrCodeResult;

  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Message displayed over here
            Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),

            // Button to scan QR code
            // FloatingActionButton(
            //   onPressed: () async {
            //     String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            //         "#ff6666",
            //         "Cancel",
            //         false,
            //         ScanMode.DEFAULT); //barcode scanner
            //     setState(() {
            //       qrCodeResult = barcodeScanRes;
            //     });
            //   },
            //   //Button having rounded rectangle border
            //   shape: RoundedRectangleBorder(
            //     side: BorderSide(color: Colors.indigo.shade900),
            //     borderRadius: BorderRadius.circular(20.0),
            //   ),
            //   child: Text(
            //     "Open Scanner",
            //     style: TextStyle(color: Colors.indigo.shade900),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
