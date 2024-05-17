import '../database.dart';

class RoomsTable extends SupabaseTable<RoomsRow> {
  @override
  String get tableName => 'Rooms';

  @override
  RoomsRow createRow(Map<String, dynamic> data) => RoomsRow(data);
}

class RoomsRow extends SupabaseDataRow {
  RoomsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoomsTable();

  int get pKRooms => getField<int>('PK_Rooms')!;
  set pKRooms(int value) => setField<int>('PK_Rooms', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get roomName => getField<String>('room_name');
  set roomName(String? value) => setField<String>('room_name', value);

  int? get fKEvent => getField<int>('FK_Event');
  set fKEvent(int? value) => setField<int>('FK_Event', value);

  int? get fKCart => getField<int>('FK_Cart');
  set fKCart(int? value) => setField<int>('FK_Cart', value);
}
