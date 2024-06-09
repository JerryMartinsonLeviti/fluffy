import '../database.dart';

class BookingEntriesTable extends SupabaseTable<BookingEntriesRow> {
  @override
  String get tableName => 'booking_entries';

  @override
  BookingEntriesRow createRow(Map<String, dynamic> data) =>
      BookingEntriesRow(data);
}

class BookingEntriesRow extends SupabaseDataRow {
  BookingEntriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingEntriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get bookingCalendarId => getField<int>('booking_calendar_id');
  set bookingCalendarId(int? value) =>
      setField<int>('booking_calendar_id', value);
}
