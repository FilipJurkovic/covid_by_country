import 'package:built_value/built_value.dart';
part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  @nullable
  String get country;

  @nullable
  int get totalConfirmed;

  @nullable
  int get totalDeaths;

  Country._();

  factory Country([updates(CountryBuilder b)]) = _$Country;
}
