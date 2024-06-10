import '../database.dart';

class BookingRangesTable extends SupabaseTable<BookingRangesRow> {
  @override
  String get tableName => 'booking_ranges';

  @override
  BookingRangesRow createRow(Map<String, dynamic> data) =>
      BookingRangesRow(data);
}

class BookingRangesRow extends SupabaseDataRow {
  BookingRangesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingRangesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get bookingCalendarId => getField<int>('booking_calendar_id');
  set bookingCalendarId(int? value) =>
      setField<int>('booking_calendar_id', value);

  PostgresTime? get startTime => getField<PostgresTime>('start_time');
  set startTime(PostgresTime? value) =>
      setField<PostgresTime>('start_time', value);

  PostgresTime? get endTime => getField<PostgresTime>('end_time');
  set endTime(PostgresTime? value) => setField<PostgresTime>('end_time', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  int? get bookingRulesId => getField<int>('booking_rules_id');
  set bookingRulesId(int? value) => setField<int>('booking_rules_id', value);

  bool? get isDateRange => getField<bool>('is_date_range');
  set isDateRange(bool? value) => setField<bool>('is_date_range', value);
}
