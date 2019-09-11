import 'package:flutter/material.dart';
import 'package:nfc_scanner/bloc/barcode_scanner_test/barcode_scanner.dart';


class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  @override
  Widget build(BuildContext context) {
    final _bloc = BarcodeScannerBloc();

    return Scaffold(
        appBar: AppBar(title: const Text('Barcode scan')),
        body: Builder(builder: (BuildContext context) {
          return Container(
              alignment: Alignment.center,
              child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: () => _bloc.barcodeScannerEventSink.add(LoadBarcodeScannerEvent()),
                            child: Text("Start barcode scan")),
                        StreamBuilder(
                          stream: _bloc.barcodeScan,
                          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                            return Text('Scan result : ${snapshot.data}\n',
                                style: TextStyle(fontSize: 20));
                          }
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back"))
                      ]));
        }));
  }
}
