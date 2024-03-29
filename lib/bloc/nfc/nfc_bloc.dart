import 'dart:async';
import 'package:nfc_scanner/bloc/bloc.dart';
import 'package:nfc_scanner/models/nfc.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';


class NfcBloc extends Bloc {

  final _controller = StreamController<Nfc>();
  final _service = FlutterNfcReader.read();
  Stream<Nfc> get nfcStream => _controller.stream;

  void getNfcScan() async {
    final results = await _service;
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}