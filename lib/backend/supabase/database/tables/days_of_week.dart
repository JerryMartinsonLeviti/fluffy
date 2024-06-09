import '../database.dart';

class DaysOfWeekTable extends SupabaseTable<DaysOfWeekRow> {
  @override
  String get tableName => 'days_of_week';

  @override
  DaysOfWeekRow createRow(Map<String, dynamic> data) => DaysOfWeekRow(data);
}

class DaysOfWeekRow extends SupabaseDataRow {
  DaysOfWeekRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DaysOfWeekTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get dayName => getField<String>('day_name');
  set dayName(String? value) => setField<String>('day_name', value);

  String? get dayLetter => getField<String>('day_letter');
  set dayLetter(String? value) => setField<String>('day_letter', value);

  String? get dayAbrev => getField<String>('day_abrev');
  set dayAbrev(String? value) => setField<String>('day_abrev', value);
}
