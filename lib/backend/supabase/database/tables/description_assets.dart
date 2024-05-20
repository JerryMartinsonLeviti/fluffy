import '../database.dart';

class DescriptionAssetsTable extends SupabaseTable<DescriptionAssetsRow> {
  @override
  String get tableName => 'DescriptionAssets';

  @override
  DescriptionAssetsRow createRow(Map<String, dynamic> data) =>
      DescriptionAssetsRow(data);
}

class DescriptionAssetsRow extends SupabaseDataRow {
  DescriptionAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DescriptionAssetsTable();

  int get pKDescriptionAssets => getField<int>('PK_DescriptionAssets')!;
  set pKDescriptionAssets(int value) =>
      setField<int>('PK_DescriptionAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String? get descriptionName => getField<String>('description_name');
  set descriptionName(String? value) =>
      setField<String>('description_name', value);

  bool get whatsIncluded => getField<bool>('whats_included')!;
  set whatsIncluded(bool value) => setField<bool>('whats_included', value);
}
