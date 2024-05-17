import '../database.dart';

class PlannersTable extends SupabaseTable<PlannersRow> {
  @override
  String get tableName => 'Planners';

  @override
  PlannersRow createRow(Map<String, dynamic> data) => PlannersRow(data);
}

class PlannersRow extends SupabaseDataRow {
  PlannersRow(super.data);

  @override
  SupabaseTable get table => PlannersTable();

  int get pKPlanners => getField<int>('PK_Planners')!;
  set pKPlanners(int value) => setField<int>('PK_Planners', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKOrganization => getField<int>('FK_Organization')!;
  set fKOrganization(int value) => setField<int>('FK_Organization', value);

  String? get plannerName => getField<String>('planner_name');
  set plannerName(String? value) => setField<String>('planner_name', value);
}
