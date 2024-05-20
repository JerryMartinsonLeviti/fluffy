import '../database.dart';

class ImageTypesTable extends SupabaseTable<ImageTypesRow> {
  @override
  String get tableName => 'ImageTypes';

  @override
  ImageTypesRow createRow(Map<String, dynamic> data) => ImageTypesRow(data);
}

class ImageTypesRow extends SupabaseDataRow {
  ImageTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImageTypesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
