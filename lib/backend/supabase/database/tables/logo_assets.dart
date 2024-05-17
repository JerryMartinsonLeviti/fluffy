import '../database.dart';

class LogoAssetsTable extends SupabaseTable<LogoAssetsRow> {
  @override
  String get tableName => 'LogoAssets';

  @override
  LogoAssetsRow createRow(Map<String, dynamic> data) => LogoAssetsRow(data);
}

class LogoAssetsRow extends SupabaseDataRow {
  LogoAssetsRow(super.data);

  @override
  SupabaseTable get table => LogoAssetsTable();

  int get pKLogoAssets => getField<int>('PK_LogoAssets')!;
  set pKLogoAssets(int value) => setField<int>('PK_LogoAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);
}
