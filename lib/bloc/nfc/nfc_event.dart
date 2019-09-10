import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nfc_scanner/models/nfc.dart';

@immutable
abstract class NfcEvent extends Equatable {
  NfcEvent([List props = const []]) : super(props);
}

class LoadNfc extends NfcEvent {
  @override
  String toString() => 'LoadNFC';
}

class GetNfc extends NfcEvent {
  final Nfc nfc;

  GetNfc(this.nfc) : super([nfc]);

  @override
  String toString() => 'GetNfc { nfc: $nfc}';
}