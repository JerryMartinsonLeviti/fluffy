import '../database.dart';

class CombinedViewTable extends SupabaseTable<CombinedViewRow> {
  @override
  String get tableName => 'combined_view';

  @override
  CombinedViewRow createRow(Map<String, dynamic> data) => CombinedViewRow(data);
}

class CombinedViewRow extends SupabaseDataRow {
  CombinedViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CombinedViewTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  int? get pKLiaisons => getField<int>('PK_Liaisons');
  set pKLiaisons(int? value) => setField<int>('PK_Liaisons', value);

  int? get room => getField<int>('room');
  set room(int? value) => setField<int>('room', value);
}
