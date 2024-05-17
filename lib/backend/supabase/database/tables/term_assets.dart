import '../database.dart';

class TermAssetsTable extends SupabaseTable<TermAssetsRow> {
  @override
  String get tableName => 'TermAssets';

  @override
  TermAssetsRow createRow(Map<String, dynamic> data) => TermAssetsRow(data);
}

class TermAssetsRow extends SupabaseDataRow {
  TermAssetsRow(super.data);

  @override
  SupabaseTable get table => TermAssetsTable();

  int get pKTermAssets => getField<int>('PK_TermAssets')!;
  set pKTermAssets(int value) => setField<int>('PK_TermAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get term => getField<String>('term');
  set term(String? value) => setField<String>('term', value);
}
