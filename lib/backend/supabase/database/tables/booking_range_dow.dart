import '../database.dart';

class BookingRangeDowTable extends SupabaseTable<BookingRangeDowRow> {
  @override
  String get tableName => 'booking_range_dow';

  @override
  BookingRangeDowRow createRow(Map<String, dynamic> data) =>
      BookingRangeDowRow(data);
}

class BookingRangeDowRow extends SupabaseDataRow {
  BookingRangeDowRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingRangeDowTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get bookingRangeId => getField<int>('booking_range_id');
  set bookingRangeId(int? value) => setField<int>('booking_range_id', value);

  int? get dayOfWeekId => getField<int>('day_of_week_id');
  set dayOfWeekId(int? value) => setField<int>('day_of_week_id', value);
}
