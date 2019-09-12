import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nfc_scanner/bloc/barcode_scanner/barcode_scanner.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';
import 'package:nfc_scanner/widgets/barcode_scanner.dart';

class BarcodeScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Barcode Scanner')),
      body: BlocProvider(
        builder: (context) => BarcodeScanBloc(),
        child: BarcodePageChild(),
      ),
    );
  }
}

class BarcodePageChild extends StatelessWidget {
  const BarcodePageChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: BlocListener(
        bloc: BlocProvider.of<BarcodeScanBloc>(context),
        listener: (BuildContext context, BarcodeScanState state) {
          if (state is BarcodeLoaded) {
            print('Loaded: ${state.barcode.barcode}');
          }
        },
        child: BlocBuilder(
          bloc: BlocProvider.of<BarcodeScanBloc>(context),
          builder: (BuildContext context, BarcodeScanState state) {
            if(state is BarcodeInitial) {
              return buildInitialInput();
            } else if (state is BarcodeLoading) {
              return buildLoading();
            } else if (state is BarcodeLoaded) {
              return buildColumnWithData(state.barcode);
            }
          },
        ),
      ),
    );
  }
}