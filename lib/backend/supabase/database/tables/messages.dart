import '../database.dart';

class MessagesTable extends SupabaseTable<MessagesRow> {
  @override
  String get tableName => 'Messages';

  @override
  MessagesRow createRow(Map<String, dynamic> data) => MessagesRow(data);
}

class MessagesRow extends SupabaseDataRow {
  MessagesRow(super.data);

  @override
  SupabaseTable get table => MessagesTable();

  int get pKMessages => getField<int>('PK_Messages')!;
  set pKMessages(int value) => setField<int>('PK_Messages', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get messageText => getField<String>('messageText');
  set messageText(String? value) => setField<String>('messageText', value);

  int? get fKUserInfo => getField<int>('FK_UserInfo');
  set fKUserInfo(int? value) => setField<int>('FK_UserInfo', value);

  int? get fKRoom => getField<int>('FK_Room');
  set fKRoom(int? value) => setField<int>('FK_Room', value);

  String? get imageURL => getField<String>('imageURL');
  set imageURL(String? value) => setField<String>('imageURL', value);

  PostgresTime? get fileURL => getField<PostgresTime>('fileURL');
  set fileURL(PostgresTime? value) => setField<PostgresTime>('fileURL', value);
}
