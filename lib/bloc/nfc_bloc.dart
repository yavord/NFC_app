import 'dart:async';
import 'package:nfc_scanner/bloc/bloc.dart';
import 'package:nfc_scanner/data_layer/nfc.dart';


class NFCBloc extends Bloc {
  Nfc _nfc;
  Nfc get nfcScan => _nfc;

  final _nfcController = StreamController<Nfc>();

  Stream<Nfc> get nfcStream => _nfcController.stream;

  void scanNfc(Nfc nfc) {
    _nfc = nfc;
    _nfcController.sink.add(nfc);
  }

  @override
  void dispose() {
    _nfcController.close();
  }
}