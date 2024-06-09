import '../database.dart';

class EventTimesTable extends SupabaseTable<EventTimesRow> {
  @override
  String get tableName => 'event_times';

  @override
  EventTimesRow createRow(Map<String, dynamic> data) => EventTimesRow(data);
}

class EventTimesRow extends SupabaseDataRow {
  EventTimesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventTimesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get startTime => getField<DateTime>('start_time');
  set startTime(DateTime? value) => setField<DateTime>('start_time', value);

  DateTime? get endTime => getField<DateTime>('end_time');
  set endTime(DateTime? value) => setField<DateTime>('end_time', value);

  int? get bookingEntryId => getField<int>('booking_entry_id');
  set bookingEntryId(int? value) => setField<int>('booking_entry_id', value);
}
