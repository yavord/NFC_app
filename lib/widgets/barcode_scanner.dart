import 'package:flutter/material.dart';
import 'package:nfc_scanner/bloc/barcode_scanner/barcode_scanner.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BarcodeScanWidget extends StatefulWidget {
  const BarcodeScanWidget({
    Key key,
  }) : super(key: key);

  @override
  _BarcodeScanWidgetState createState() => _BarcodeScanWidgetState();
}

class _BarcodeScanWidgetState extends State<BarcodeScanWidget> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: submitScannerRequest,
        )
      ],
    );
  }

  void submitScannerRequest() {
    final barcodeBloc = BlocProvider.of<BarcodeScanBloc>(context);
    barcodeBloc.dispatch(GetBarcodeScan());
  }
}

Widget buildInitialInput() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Scan result: no scan available'),
    ],
  );
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildColumnWithData(Barcode barcode) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Scan result: $barcode)')
    ],
  );
}