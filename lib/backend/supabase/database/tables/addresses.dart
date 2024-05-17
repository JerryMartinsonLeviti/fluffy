import '../database.dart';

class AddressesTable extends SupabaseTable<AddressesRow> {
  @override
  String get tableName => 'Addresses';

  @override
  AddressesRow createRow(Map<String, dynamic> data) => AddressesRow(data);
}

class AddressesRow extends SupabaseDataRow {
  AddressesRow(super.data);

  @override
  SupabaseTable get table => AddressesTable();

  int get pKAddresses => getField<int>('PK_Addresses')!;
  set pKAddresses(int value) => setField<int>('PK_Addresses', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get streetName1 => getField<String>('streetName1');
  set streetName1(String? value) => setField<String>('streetName1', value);

  String? get streetName2 => getField<String>('streetName2');
  set streetName2(String? value) => setField<String>('streetName2', value);

  String? get regionCode => getField<String>('regionCode');
  set regionCode(String? value) => setField<String>('regionCode', value);

  String? get postalCode => getField<String>('postalCode');
  set postalCode(String? value) => setField<String>('postalCode', value);

  String? get countryCode => getField<String>('countryCode');
  set countryCode(String? value) => setField<String>('countryCode', value);

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);
}
