import '../database.dart';

class PostsTable extends SupabaseTable<PostsRow> {
  @override
  String get tableName => 'posts';

  @override
  PostsRow createRow(Map<String, dynamic> data) => PostsRow(data);
}

class PostsRow extends SupabaseDataRow {
  PostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get authorUserId => getField<int>('author_user_id')!;
  set authorUserId(int value) => setField<int>('author_user_id', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);
}
