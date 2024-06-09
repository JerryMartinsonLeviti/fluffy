import '../database.dart';

class BookingCalendarsTable extends SupabaseTable<BookingCalendarsRow> {
  @override
  String get tableName => 'booking_calendars';

  @override
  BookingCalendarsRow createRow(Map<String, dynamic> data) =>
      BookingCalendarsRow(data);
}

class BookingCalendarsRow extends SupabaseDataRow {
  BookingCalendarsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingCalendarsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get packageId => getField<int>('package_id');
  set packageId(int? value) => setField<int>('package_id', value);

  int? get venueId => getField<int>('venue_id');
  set venueId(int? value) => setField<int>('venue_id', value);

  int? get functionSpaceId => getField<int>('function_space_id');
  set functionSpaceId(int? value) => setField<int>('function_space_id', value);
}
