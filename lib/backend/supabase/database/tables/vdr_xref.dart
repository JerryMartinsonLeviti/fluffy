import '../database.dart';

class VdrXrefTable extends SupabaseTable<VdrXrefRow> {
  @override
  String get tableName => 'vdr_xref';

  @override
  VdrXrefRow createRow(Map<String, dynamic> data) => VdrXrefRow(data);
}

class VdrXrefRow extends SupabaseDataRow {
  VdrXrefRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VdrXrefTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKVenues => getField<int>('PK_Venues');
  set pKVenues(int? value) => setField<int>('PK_Venues', value);

  int? get pKPackages => getField<int>('PK_Packages');
  set pKPackages(int? value) => setField<int>('PK_Packages', value);

  int? get pKFunctionSpaces => getField<int>('PK_FunctionSpaces');
  set pKFunctionSpaces(int? value) => setField<int>('PK_FunctionSpaces', value);
}
