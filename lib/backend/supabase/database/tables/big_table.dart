import '../database.dart';

class BigTableTable extends SupabaseTable<BigTableRow> {
  @override
  String get tableName => 'big_table';

  @override
  BigTableRow createRow(Map<String, dynamic> data) => BigTableRow(data);
}

class BigTableRow extends SupabaseDataRow {
  BigTableRow(super.data);

  @override
  SupabaseTable get table => BigTableTable();

  int? get pKRooms => getField<int>('PK_Rooms');
  set pKRooms(int? value) => setField<int>('PK_Rooms', value);

  String? get roomName => getField<String>('room_name');
  set roomName(String? value) => setField<String>('room_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  int? get pKUserInfos => getField<int>('PK_UserInfos');
  set pKUserInfos(int? value) => setField<int>('PK_UserInfos', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get pKEvents => getField<int>('PK_Events');
  set pKEvents(int? value) => setField<int>('PK_Events', value);

  int? get pKCarts => getField<int>('PK_Carts');
  set pKCarts(int? value) => setField<int>('PK_Carts', value);

  int? get fKLiaison => getField<int>('FK_Liaison');
  set fKLiaison(int? value) => setField<int>('FK_Liaison', value);

  int? get fKPlanner => getField<int>('FK_Planner');
  set fKPlanner(int? value) => setField<int>('FK_Planner', value);

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKVenues => getField<int>('PK_Venues');
  set pKVenues(int? value) => setField<int>('PK_Venues', value);
}
