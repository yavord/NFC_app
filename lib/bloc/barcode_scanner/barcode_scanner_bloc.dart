import 'package:bloc/bloc.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'barcode_scanner.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';


class BarcodeScanBloc extends Bloc<BarcodeScanEvent, BarcodeScanState>{
  @override
  BarcodeScanState get initialState => BarcodeInitial();

  @override
  Stream<BarcodeScanState> mapEventToState(BarcodeScanEvent event) async* {
    if(event is GetBarcodeScan) {
      yield BarcodeLoading();
      final barcode = await _getBarcode();
      yield BarcodeLoaded(barcode);
    }
  }

  Future<Barcode> _getBarcode() {
    return Future.delayed(
      Duration(seconds: 1),
      () async {
        String barcode;
        try{
          barcode =
          await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", true);
        } on Exception{
          barcode = 'Unable to complete scan.';
        }
        return Barcode(
          barcode: barcode
        );
      }
    );
  }
}