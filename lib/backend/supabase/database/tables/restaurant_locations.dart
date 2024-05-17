import '../database.dart';

class RestaurantLocationsTable extends SupabaseTable<RestaurantLocationsRow> {
  @override
  String get tableName => 'RestaurantLocations';

  @override
  RestaurantLocationsRow createRow(Map<String, dynamic> data) =>
      RestaurantLocationsRow(data);
}

class RestaurantLocationsRow extends SupabaseDataRow {
  RestaurantLocationsRow(super.data);

  @override
  SupabaseTable get table => RestaurantLocationsTable();

  int get pKRestaurantLocations => getField<int>('PK_RestaurantLocations')!;
  set pKRestaurantLocations(int value) =>
      setField<int>('PK_RestaurantLocations', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKAddress => getField<int>('FK_Address');
  set fKAddress(int? value) => setField<int>('FK_Address', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  String? get restaurantLocationName =>
      getField<String>('RestaurantLocationName');
  set restaurantLocationName(String? value) =>
      setField<String>('RestaurantLocationName', value);
}
