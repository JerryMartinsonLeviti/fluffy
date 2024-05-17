import '../database.dart';

class VenuesTable extends SupabaseTable<VenuesRow> {
  @override
  String get tableName => 'Venues';

  @override
  VenuesRow createRow(Map<String, dynamic> data) => VenuesRow(data);
}

class VenuesRow extends SupabaseDataRow {
  VenuesRow(super.data);

  @override
  SupabaseTable get table => VenuesTable();

  int get pKVenues => getField<int>('PK_Venues')!;
  set pKVenues(int value) => setField<int>('PK_Venues', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKAddress => getField<int>('FK_Address')!;
  set fKAddress(int value) => setField<int>('FK_Address', value);

  int get fKVendor => getField<int>('FK_Vendor')!;
  set fKVendor(int value) => setField<int>('FK_Vendor', value);

  String? get restaurantLocationName =>
      getField<String>('RestaurantLocationName');
  set restaurantLocationName(String? value) =>
      setField<String>('RestaurantLocationName', value);

  String? get venueDescription => getField<String>('venue_description');
  set venueDescription(String? value) =>
      setField<String>('venue_description', value);
}
