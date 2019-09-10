import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nfc_scanner/models/nfc.dart';

@immutable
abstract class NfcState extends Equatable {
  NfcState([List props = const []]) : super(props);
}

class NfcLoading extends NfcState {
  @override
  String toString() => 'NfcLoading';
}

class NfcLoaded extends NfcState {
  final List<Nfc> nfc;

  NfcLoaded([this.nfc = const []]) : super([nfc]);

  @override
  String toString() => 'NfcLoaded';
}

class NfcNotLoaded extends NfcState {
  @override
  String toString() => 'NfcNotLoaded';
}