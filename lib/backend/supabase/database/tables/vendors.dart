import '../database.dart';

class VendorsTable extends SupabaseTable<VendorsRow> {
  @override
  String get tableName => 'Vendors';

  @override
  VendorsRow createRow(Map<String, dynamic> data) => VendorsRow(data);
}

class VendorsRow extends SupabaseDataRow {
  VendorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorsTable();

  int get pKVendors => getField<int>('PK_Vendors')!;
  set pKVendors(int value) => setField<int>('PK_Vendors', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKOrganization => getField<int>('FK_Organization')!;
  set fKOrganization(int value) => setField<int>('FK_Organization', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get vendorDescription => getField<String>('vendor_description');
  set vendorDescription(String? value) =>
      setField<String>('vendor_description', value);
}
