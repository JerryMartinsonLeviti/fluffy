import '../database.dart';

class AvailableCountriesTable extends SupabaseTable<AvailableCountriesRow> {
  @override
  String get tableName => 'AvailableCountries';

  @override
  AvailableCountriesRow createRow(Map<String, dynamic> data) =>
      AvailableCountriesRow(data);
}

class AvailableCountriesRow extends SupabaseDataRow {
  AvailableCountriesRow(super.data);

  @override
  SupabaseTable get table => AvailableCountriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get countryName => getField<String>('CountryName');
  set countryName(String? value) => setField<String>('CountryName', value);

  String? get countryAbbreviation => getField<String>('CountryAbbreviation');
  set countryAbbreviation(String? value) =>
      setField<String>('CountryAbbreviation', value);
}
