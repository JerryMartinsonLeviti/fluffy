import '../database.dart';

class LogoAssetsTable extends SupabaseTable<LogoAssetsRow> {
  @override
  String get tableName => 'LogoAssets';

  @override
  LogoAssetsRow createRow(Map<String, dynamic> data) => LogoAssetsRow(data);
}

class LogoAssetsRow extends SupabaseDataRow {
  LogoAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogoAssetsTable();

  int get pKLogoAssets => getField<int>('PK_LogoAssets')!;
  set pKLogoAssets(int value) => setField<int>('PK_LogoAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get logoUrl => getField<String>('logo_url')!;
  set logoUrl(String value) => setField<String>('logo_url', value);
}
