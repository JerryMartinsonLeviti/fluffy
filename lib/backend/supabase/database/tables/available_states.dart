import '../database.dart';

class AvailableStatesTable extends SupabaseTable<AvailableStatesRow> {
  @override
  String get tableName => 'AvailableStates';

  @override
  AvailableStatesRow createRow(Map<String, dynamic> data) =>
      AvailableStatesRow(data);
}

class AvailableStatesRow extends SupabaseDataRow {
  AvailableStatesRow(super.data);

  @override
  SupabaseTable get table => AvailableStatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get stateName => getField<String>('StateName');
  set stateName(String? value) => setField<String>('StateName', value);

  String? get stateAbbreviation => getField<String>('StateAbbreviation');
  set stateAbbreviation(String? value) =>
      setField<String>('StateAbbreviation', value);
}
