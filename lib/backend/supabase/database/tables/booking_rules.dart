import '../database.dart';

class BookingRulesTable extends SupabaseTable<BookingRulesRow> {
  @override
  String get tableName => 'booking_rules';

  @override
  BookingRulesRow createRow(Map<String, dynamic> data) => BookingRulesRow(data);
}

class BookingRulesRow extends SupabaseDataRow {
  BookingRulesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingRulesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get bookingRuleName => getField<String>('booking_rule_name');
  set bookingRuleName(String? value) =>
      setField<String>('booking_rule_name', value);

  int? get bookingCalendarId => getField<int>('booking_calendar_id');
  set bookingCalendarId(int? value) =>
      setField<int>('booking_calendar_id', value);
}
