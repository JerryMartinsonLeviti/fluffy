import '../database.dart';

class EventLiaisonTable extends SupabaseTable<EventLiaisonRow> {
  @override
  String get tableName => 'EventLiaison';

  @override
  EventLiaisonRow createRow(Map<String, dynamic> data) => EventLiaisonRow(data);
}

class EventLiaisonRow extends SupabaseDataRow {
  EventLiaisonRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventLiaisonTable();

  int get pKEventLiaison => getField<int>('PK_EventLiaison')!;
  set pKEventLiaison(int value) => setField<int>('PK_EventLiaison', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKEvent => getField<int>('FK_Event')!;
  set fKEvent(int value) => setField<int>('FK_Event', value);

  int get fKLiaison => getField<int>('FK_Liaison')!;
  set fKLiaison(int value) => setField<int>('FK_Liaison', value);
}
