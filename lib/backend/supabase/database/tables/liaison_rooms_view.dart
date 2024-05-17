import '../database.dart';

class LiaisonRoomsViewTable extends SupabaseTable<LiaisonRoomsViewRow> {
  @override
  String get tableName => 'liaison_rooms_view';

  @override
  LiaisonRoomsViewRow createRow(Map<String, dynamic> data) =>
      LiaisonRoomsViewRow(data);
}

class LiaisonRoomsViewRow extends SupabaseDataRow {
  LiaisonRoomsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LiaisonRoomsViewTable();

  int? get pKLiaisons => getField<int>('PK_Liaisons');
  set pKLiaisons(int? value) => setField<int>('PK_Liaisons', value);

  int? get pKRooms => getField<int>('PK_Rooms');
  set pKRooms(int? value) => setField<int>('PK_Rooms', value);

  String? get liaisonName => getField<String>('liaison_name');
  set liaisonName(String? value) => setField<String>('liaison_name', value);

  String? get roomName => getField<String>('room_name');
  set roomName(String? value) => setField<String>('room_name', value);
}
