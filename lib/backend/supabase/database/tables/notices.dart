import '../database.dart';

class NoticesTable extends SupabaseTable<NoticesRow> {
  @override
  String get tableName => 'notices';

  @override
  NoticesRow createRow(Map<String, dynamic> data) => NoticesRow(data);
}

class NoticesRow extends SupabaseDataRow {
  NoticesRow(super.data);

  @override
  SupabaseTable get table => NoticesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get noticeText => getField<String>('notice_text');
  set noticeText(String? value) => setField<String>('notice_text', value);
}
