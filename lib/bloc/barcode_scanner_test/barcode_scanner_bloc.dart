import 'dart:async';
import 'barcode_scanner_event.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerBloc {
  String _barcodeScan;

  final _barcodeScannerController = StreamController<String>();
  StreamSink<String> get _buttonPress => _barcodeScannerController.sink;
  Stream<String> get barcodeScan => _barcodeScannerController.stream;

  final _barcodeScannerEventController = StreamController<BarcodeScanEvent>();
  Sink<BarcodeScanEvent> get barcodeScannerEventSink =>
      _barcodeScannerEventController.sink;

  BarcodeScannerBloc() {
    _barcodeScannerEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(BarcodeScanEvent event) async {
    if (event is LoadBarcodeScannerEvent) {
      try{
        _barcodeScan =
            await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", true);
      } on Exception{
        _barcodeScan = 'Unable to complete scan.';
      }
    }
    _buttonPress.add(_barcodeScan);
  }

  void dispose() {
    _barcodeScannerController.close();
    _barcodeScannerEventController.close();
  }
}