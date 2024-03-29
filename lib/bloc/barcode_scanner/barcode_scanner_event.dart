import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BarcodeScanEvent extends Equatable {
  BarcodeScanEvent([List props = const []]) : super(props);
}

class GetBarcodeScan extends BarcodeScanEvent {}