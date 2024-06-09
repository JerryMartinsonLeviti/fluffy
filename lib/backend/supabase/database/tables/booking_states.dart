import '../database.dart';

class BookingStatesTable extends SupabaseTable<BookingStatesRow> {
  @override
  String get tableName => 'booking_states';

  @override
  BookingStatesRow createRow(Map<String, dynamic> data) =>
      BookingStatesRow(data);
}

class BookingStatesRow extends SupabaseDataRow {
  BookingStatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingStatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get bookingStateName => getField<String>('booking_state_name')!;
  set bookingStateName(String value) =>
      setField<String>('booking_state_name', value);
}
