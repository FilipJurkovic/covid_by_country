// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cubit_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CubitState extends CubitState {
  @override
  final bool isBusy;
  @override
  final String apiError;

  factory _$CubitState([void Function(CubitStateBuilder) updates]) =>
      (new CubitStateBuilder()..update(updates)).build();

  _$CubitState._({this.isBusy, this.apiError}) : super._() {
    if (isBusy == null) {
      throw new BuiltValueNullFieldError('CubitState', 'isBusy');
    }
  }

  @override
  CubitState rebuild(void Function(CubitStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CubitStateBuilder toBuilder() => new CubitStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CubitState &&
        isBusy == other.isBusy &&
        apiError == other.apiError;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isBusy.hashCode), apiError.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CubitState')
          ..add('isBusy', isBusy)
          ..add('apiError', apiError))
        .toString();
  }
}

class CubitStateBuilder implements Builder<CubitState, CubitStateBuilder> {
  _$CubitState _$v;

  bool _isBusy;
  bool get isBusy => _$this._isBusy;
  set isBusy(bool isBusy) => _$this._isBusy = isBusy;

  String _apiError;
  String get apiError => _$this._apiError;
  set apiError(String apiError) => _$this._apiError = apiError;

  CubitStateBuilder();

  CubitStateBuilder get _$this {
    if (_$v != null) {
      _isBusy = _$v.isBusy;
      _apiError = _$v.apiError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CubitState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CubitState;
  }

  @override
  void update(void Function(CubitStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CubitState build() {
    final _$result =
        _$v ?? new _$CubitState._(isBusy: isBusy, apiError: apiError);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
