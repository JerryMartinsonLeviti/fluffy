import '../database.dart';

class BookingBehaviorTable extends SupabaseTable<BookingBehaviorRow> {
  @override
  String get tableName => 'booking_behavior';

  @override
  BookingBehaviorRow createRow(Map<String, dynamic> data) =>
      BookingBehaviorRow(data);
}

class BookingBehaviorRow extends SupabaseDataRow {
  BookingBehaviorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingBehaviorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get colorCode => getField<String>('color_code');
  set colorCode(String? value) => setField<String>('color_code', value);

  String? get behaviorName => getField<String>('behavior_name');
  set behaviorName(String? value) => setField<String>('behavior_name', value);
}
