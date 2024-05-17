import '../database.dart';

class VendorRoomsViewTable extends SupabaseTable<VendorRoomsViewRow> {
  @override
  String get tableName => 'vendor_rooms_view';

  @override
  VendorRoomsViewRow createRow(Map<String, dynamic> data) =>
      VendorRoomsViewRow(data);
}

class VendorRoomsViewRow extends SupabaseDataRow {
  VendorRoomsViewRow(super.data);

  @override
  SupabaseTable get table => VendorRoomsViewTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKRooms => getField<int>('PK_Rooms');
  set pKRooms(int? value) => setField<int>('PK_Rooms', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get roomName => getField<String>('room_name');
  set roomName(String? value) => setField<String>('room_name', value);
}
