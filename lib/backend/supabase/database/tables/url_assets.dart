import '../database.dart';

class UrlAssetsTable extends SupabaseTable<UrlAssetsRow> {
  @override
  String get tableName => 'UrlAssets';

  @override
  UrlAssetsRow createRow(Map<String, dynamic> data) => UrlAssetsRow(data);
}

class UrlAssetsRow extends SupabaseDataRow {
  UrlAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UrlAssetsTable();

  int get pKUrlAssets => getField<int>('PK_UrlAssets')!;
  set pKUrlAssets(int value) => setField<int>('PK_UrlAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);
}
