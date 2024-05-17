import '../database.dart';

class RmuViewTable extends SupabaseTable<RmuViewRow> {
  @override
  String get tableName => 'rmu_view';

  @override
  RmuViewRow createRow(Map<String, dynamic> data) => RmuViewRow(data);
}

class RmuViewRow extends SupabaseDataRow {
  RmuViewRow(super.data);

  @override
  SupabaseTable get table => RmuViewTable();

  int? get pKRooms => getField<int>('PK_Rooms');
  set pKRooms(int? value) => setField<int>('PK_Rooms', value);

  int? get pKMessages => getField<int>('PK_Messages');
  set pKMessages(int? value) => setField<int>('PK_Messages', value);

  int? get fKRoom => getField<int>('FK_Room');
  set fKRoom(int? value) => setField<int>('FK_Room', value);

  int? get fKUserInfo => getField<int>('FK_UserInfo');
  set fKUserInfo(int? value) => setField<int>('FK_UserInfo', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get messageText => getField<String>('messageText');
  set messageText(String? value) => setField<String>('messageText', value);

  String? get imageURL => getField<String>('imageURL');
  set imageURL(String? value) => setField<String>('imageURL', value);

  PostgresTime? get fileURL => getField<PostgresTime>('fileURL');
  set fileURL(PostgresTime? value) => setField<PostgresTime>('fileURL', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get photoUrl => getField<String>('photoUrl');
  set photoUrl(String? value) => setField<String>('photoUrl', value);
}
