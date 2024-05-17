import '../database.dart';

class PackagesTable extends SupabaseTable<PackagesRow> {
  @override
  String get tableName => 'Packages';

  @override
  PackagesRow createRow(Map<String, dynamic> data) => PackagesRow(data);
}

class PackagesRow extends SupabaseDataRow {
  PackagesRow(super.data);

  @override
  SupabaseTable get table => PackagesTable();

  int get pKPackages => getField<int>('PK_Packages')!;
  set pKPackages(int value) => setField<int>('PK_Packages', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get maxGuests => getField<int>('maxGuests');
  set maxGuests(int? value) => setField<int>('maxGuests', value);

  int? get minGuests => getField<int>('minGuests');
  set minGuests(int? value) => setField<int>('minGuests', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  String? get internalName => getField<String>('internal_name');
  set internalName(String? value) => setField<String>('internal_name', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get publicDescription => getField<String>('public_description');
  set publicDescription(String? value) =>
      setField<String>('public_description', value);

  String? get internalDescription => getField<String>('internal_description');
  set internalDescription(String? value) =>
      setField<String>('internal_description', value);

  List<int> get fKLISTVenues => getListField<int>('FK_LIST_Venues');
  set fKLISTVenues(List<int>? value) =>
      setListField<int>('FK_LIST_Venues', value);

  int? get priceInCents => getField<int>('priceInCents');
  set priceInCents(int? value) => setField<int>('priceInCents', value);

  String? get unitOfMeasure => getField<String>('unit_of_measure');
  set unitOfMeasure(String? value) =>
      setField<String>('unit_of_measure', value);
}
