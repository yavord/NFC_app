import 'package:flutter/material.dart';

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
