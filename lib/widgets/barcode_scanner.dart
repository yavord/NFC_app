import 'package:flutter/material.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';

Widget buildInitialInput() {
  return Center(
    child: Text('No scan available.'),
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
      Text('')
    ],
  );
}