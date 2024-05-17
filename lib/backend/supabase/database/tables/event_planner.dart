import '../database.dart';

class EventPlannerTable extends SupabaseTable<EventPlannerRow> {
  @override
  String get tableName => 'EventPlanner';

  @override
  EventPlannerRow createRow(Map<String, dynamic> data) => EventPlannerRow(data);
}

class EventPlannerRow extends SupabaseDataRow {
  EventPlannerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventPlannerTable();

  int get pKEventPlanner => getField<int>('PK_EventPlanner')!;
  set pKEventPlanner(int value) => setField<int>('PK_EventPlanner', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKPlanner => getField<int>('FK_Planner')!;
  set fKPlanner(int value) => setField<int>('FK_Planner', value);

  int get fKEvent => getField<int>('FK_Event')!;
  set fKEvent(int value) => setField<int>('FK_Event', value);
}
