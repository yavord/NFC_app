import 'package:flutter/material.dart';
import 'package:nfc_scanner/widgets/nfc_reader.dart';
import 'package:nfc_scanner/widgets/barcode_scanner.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Menu Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('NFC Scanner'),
              onPressed: (){
                Navigator.pushNamed(context, '/nfc');
              },
            ),
            RaisedButton(
              child: Text('Barcode Scanner'),
              onPressed: (){
                Navigator.pushNamed(context, '/barcode_scanner');
              },
            ),
          ],
        ),
      ),
    );
  }
}
