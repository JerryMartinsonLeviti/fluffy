import '../database.dart';

class ItemGroupChoicesTable extends SupabaseTable<ItemGroupChoicesRow> {
  @override
  String get tableName => 'ItemGroupChoices';

  @override
  ItemGroupChoicesRow createRow(Map<String, dynamic> data) =>
      ItemGroupChoicesRow(data);
}

class ItemGroupChoicesRow extends SupabaseDataRow {
  ItemGroupChoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemGroupChoicesTable();

  String get pKItemGroupChoices => getField<String>('PKItemGroupChoices')!;
  set pKItemGroupChoices(String value) =>
      setField<String>('PKItemGroupChoices', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
