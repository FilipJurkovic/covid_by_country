import 'package:built_value/built_value.dart';
part 'cubit_state.g.dart';

abstract class CubitState implements Built<CubitState, CubitStateBuilder> {
  bool get isBusy;
  @nullable
  String get apiError;

  CubitState._();

  factory CubitState([updates(CubitStateBuilder b)]) = _$CubitState;
}
