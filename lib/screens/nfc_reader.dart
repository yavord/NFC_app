import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:flutter/material.dart';

class NFCReaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFC Reader'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text(''),
                )
              ],
              //TODO: Start and stop NFC reader, retrieve NFC tag info
            ),
            RaisedButton(
              child: Text('Back'),
              onPressed: (){
                Navigator.pop(context);
                //TODO: Navigate back to home page
              },
            )
          ],
        )
      ),
    );
  }
}