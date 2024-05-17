import '../database.dart';

class PlannerRoomsViewTable extends SupabaseTable<PlannerRoomsViewRow> {
  @override
  String get tableName => 'planner_rooms_view';

  @override
  PlannerRoomsViewRow createRow(Map<String, dynamic> data) =>
      PlannerRoomsViewRow(data);
}

class PlannerRoomsViewRow extends SupabaseDataRow {
  PlannerRoomsViewRow(super.data);

  @override
  SupabaseTable get table => PlannerRoomsViewTable();

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  int? get pKRooms => getField<int>('PK_Rooms');
  set pKRooms(int? value) => setField<int>('PK_Rooms', value);

  String? get plannerName => getField<String>('planner_name');
  set plannerName(String? value) => setField<String>('planner_name', value);

  String? get roomName => getField<String>('room_name');
  set roomName(String? value) => setField<String>('room_name', value);
}
