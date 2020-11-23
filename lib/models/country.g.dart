// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Country extends Country {
  @override
  final String country;
  @override
  final int totalConfirmed;
  @override
  final int totalDeaths;

  factory _$Country([void Function(CountryBuilder) updates]) =>
      (new CountryBuilder()..update(updates)).build();

  _$Country._({this.country, this.totalConfirmed, this.totalDeaths})
      : super._();

  @override
  Country rebuild(void Function(CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country &&
        country == other.country &&
        totalConfirmed == other.totalConfirmed &&
        totalDeaths == other.totalDeaths;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, country.hashCode), totalConfirmed.hashCode),
        totalDeaths.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Country')
          ..add('country', country)
          ..add('totalConfirmed', totalConfirmed)
          ..add('totalDeaths', totalDeaths))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _totalConfirmed;
  int get totalConfirmed => _$this._totalConfirmed;
  set totalConfirmed(int totalConfirmed) =>
      _$this._totalConfirmed = totalConfirmed;

  int _totalDeaths;
  int get totalDeaths => _$this._totalDeaths;
  set totalDeaths(int totalDeaths) => _$this._totalDeaths = totalDeaths;

  CountryBuilder();

  CountryBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _totalConfirmed = _$v.totalConfirmed;
      _totalDeaths = _$v.totalDeaths;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Country;
  }

  @override
  void update(void Function(CountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Country build() {
    final _$result = _$v ??
        new _$Country._(
            country: country,
            totalConfirmed: totalConfirmed,
            totalDeaths: totalDeaths);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
