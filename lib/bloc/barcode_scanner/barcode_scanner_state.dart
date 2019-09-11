import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nfc_scanner/models/barcode_scanner.dart';

@immutable
abstract class BarcodeScanState extends Equatable {
  BarcodeScanState([List props = const []]) : super(props);
}

class BarcodeInitial extends BarcodeScanState {}

class BarcodeLoading extends BarcodeScanState {}

class BarcodeLoaded extends BarcodeScanState {
  final Barcode barcode;

  BarcodeLoaded(this.barcode) : super([barcode]);
}