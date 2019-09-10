import 'dart:async';
import 'package:nfc_scanner/bloc/bloc.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class BarcodeScannerBloc extends Bloc {
  final _controller = StreamController<String>();
  final _service = FlutterBarcodeScanner.scanBarcode
    ("#ff6666", "Cancel", true);

  void getBarcodeScan() async {
    final results = await _service;
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}