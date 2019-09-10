import 'package:flutter/material.dart';
import 'package:nfc_scanner/bloc/nfc_bloc.dart';
import 'package:nfc_scanner/bloc/bloc_provider.dart';

class NFCReaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = NfcBloc();
    
    return BlocProvider<NfcBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('NFC Reader'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => bloc.getNfcScan(),
                child: Text('Read NFC tag'),
              ),
              RaisedButton(
                child: Text('Back'),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          )
        ),
      ),
    );
  }
}