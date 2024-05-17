import '../database.dart';

class AssetCollectionsViewTable extends SupabaseTable<AssetCollectionsViewRow> {
  @override
  String get tableName => 'AssetCollectionsView';

  @override
  AssetCollectionsViewRow createRow(Map<String, dynamic> data) =>
      AssetCollectionsViewRow(data);
}

class AssetCollectionsViewRow extends SupabaseDataRow {
  AssetCollectionsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssetCollectionsViewTable();

  int? get typeKey => getField<int>('type_key');
  set typeKey(int? value) => setField<int>('type_key', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  int? get refKey => getField<int>('ref_key');
  set refKey(int? value) => setField<int>('ref_key', value);

  String? get refName => getField<String>('ref_name');
  set refName(String? value) => setField<String>('ref_name', value);
}
