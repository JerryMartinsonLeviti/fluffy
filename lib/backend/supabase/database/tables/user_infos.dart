import '../database.dart';

class UserInfosTable extends SupabaseTable<UserInfosRow> {
  @override
  String get tableName => 'UserInfos';

  @override
  UserInfosRow createRow(Map<String, dynamic> data) => UserInfosRow(data);
}

class UserInfosRow extends SupabaseDataRow {
  UserInfosRow(super.data);

  @override
  SupabaseTable get table => UserInfosTable();

  int get pKUserInfos => getField<int>('PK_UserInfos')!;
  set pKUserInfos(int value) => setField<int>('PK_UserInfos', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  String? get photoUrl => getField<String>('photoUrl');
  set photoUrl(String? value) => setField<String>('photoUrl', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKLiaison => getField<int>('FK_Liaison');
  set fKLiaison(int? value) => setField<int>('FK_Liaison', value);

  int? get fKPlanner => getField<int>('FK_Planner');
  set fKPlanner(int? value) => setField<int>('FK_Planner', value);
}
