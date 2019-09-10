import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nfc_scanner/models/nfc.dart';
import 'nfc.dart';

class NfcBloc extends Bloc<NfcEvent, NfcState>{
  final Nfc nfc;

  NfcBloc({@required this.nfc});

  @override
  NfcState get initialstate => NfcLoading();
}