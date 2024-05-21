import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'Events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsTable();

  int get pKEvents => getField<int>('PK_Events')!;
  set pKEvents(int value) => setField<int>('PK_Events', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get eventName => getField<String>('event_name')!;
  set eventName(String value) => setField<String>('event_name', value);

  DateTime? get dateTime => getField<DateTime>('DateTime');
  set dateTime(DateTime? value) => setField<DateTime>('DateTime', value);

  String get eventStatus => getField<String>('EventStatus')!;
  set eventStatus(String value) => setField<String>('EventStatus', value);

  int get guestCount => getField<int>('guestCount')!;
  set guestCount(int value) => setField<int>('guestCount', value);

  int get budgetInCents => getField<int>('budgetInCents')!;
  set budgetInCents(int value) => setField<int>('budgetInCents', value);

  bool get budgetIsPerEvent => getField<bool>('budgetIsPerEvent')!;
  set budgetIsPerEvent(bool value) => setField<bool>('budgetIsPerEvent', value);

  DateTime? get desiredDate => getField<DateTime>('desiredDate');
  set desiredDate(DateTime? value) => setField<DateTime>('desiredDate', value);

  DateTime? get desiredTimeOfDay => getField<DateTime>('desiredTimeOfDay');
  set desiredTimeOfDay(DateTime? value) =>
      setField<DateTime>('desiredTimeOfDay', value);
}
