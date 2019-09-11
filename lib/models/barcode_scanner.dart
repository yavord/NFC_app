import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Barcode extends Equatable {
  final String barcode;

  Barcode({
    @required this.barcode
  }) : super([barcode]);
}