import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfc_scanner/bloc/barcode_scanner/barcode_scanner.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';
import 'package:nfc_scanner/widgets/barcode_scanner.dart';


class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  @override
  Widget build(BuildContext context) {
    final barcodeBloc = BarcodeScanBloc();

    return Scaffold(
      appBar: AppBar(title: const Text('Barcode scan')),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: BlocBuilder(
          bloc: barcodeBloc,
          builder: (BuildContext context, BarcodeScanState state) {
            if (state is BarcodeInitial) {
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