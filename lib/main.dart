import 'package:flutter/material.dart';
import 'package:nfc_scanner/screens/home.dart';
import 'package:nfc_scanner/screens/nfc_reader.dart';
import 'package:nfc_scanner/screens/barcode_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget collection',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage(),
        '/nfc':(context) => NFCReaderScreen(),
        '/barcode_scanner':(context) => BarcodeScanner(),
      },
    );
  }
}
